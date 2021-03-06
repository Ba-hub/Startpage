.class public Landroid/support/v7/widget/ActionBarContextView;
.super Landroid/support/v7/widget/AbsActionBarView;
.source "ActionBarContextView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarContextView"


# instance fields
.field private mClose:Landroid/view/View;

.field private mCloseItemLayout:I

.field private mCustomView:Landroid/view/View;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionModeStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroid/support/v7/appcompat/R$styleable;->ActionMode:[I

    move v8, v3

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v5

    move-object v4, v5

    .line 65
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->ActionMode_background:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ActionBarContextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->ActionMode_titleTextStyle:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 69
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->ActionMode_subtitleTextStyle:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 72
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->ActionMode_height:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/ActionBarContextView;->mContentHeight:I

    .line 75
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->ActionMode_closeItemLayout:I

    sget v8, Landroid/support/v7/appcompat/R$layout;->abc_action_mode_close_item_material:I

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/ActionBarContextView;->mCloseItemLayout:I

    .line 79
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 80
    return-void
.end method

.method private initTitle()V
    .locals 7

    .prologue
    .line 129
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 130
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move-object v1, v3

    .line 131
    move-object v3, v1

    sget v4, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_title_item:I

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 132
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ActionBarContextView;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 133
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v5, Landroid/support/v7/appcompat/R$id;->action_bar_title:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Landroid/support/v7/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 134
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v5, Landroid/support/v7/appcompat/R$id;->action_bar_subtitle:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Landroid/support/v7/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 135
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v3, :cond_0

    .line 136
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 138
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v3, :cond_1

    .line 139
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 143
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_0
    move v1, v3

    .line 147
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_1
    move v2, v3

    .line 148
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    move v4, v2

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move v4, v1

    if-nez v4, :cond_2

    move v4, v2

    if-eqz v4, :cond_7

    :cond_2
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_3

    .line 151
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 153
    :cond_3
    return-void

    .line 146
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 147
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 148
    :cond_6
    const/16 v4, 0x8

    goto :goto_2

    .line 149
    :cond_7
    const/16 v4, 0x8

    goto :goto_3
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public bridge synthetic canShowOverflowMenu()Z
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/AbsActionBarView;->canShowOverflowMenu()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public closeMode()V
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v1, :cond_0

    .line 188
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->killMode()V

    .line 191
    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 227
    move-object v0, p0

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .prologue
    .line 232
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/AbsActionBarView;->getContentHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 210
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v1

    move v0, v1

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public initForMode(Landroid/support/v7/view/ActionMode;)V
    .locals 11

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v5, :cond_2

    .line 157
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    move-object v2, v5

    .line 158
    move-object v5, v0

    move-object v6, v2

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/ActionBarContextView;->mCloseItemLayout:I

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Landroid/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 159
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 164
    :cond_0
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    sget v6, Landroid/support/v7/appcompat/R$id;->action_mode_close_button:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 165
    move-object v5, v2

    new-instance v6, Landroid/support/v7/widget/ActionBarContextView$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/ActionBarContextView$1;-><init>(Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/MenuBuilder;

    move-object v3, v5

    .line 172
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v5, :cond_1

    .line 173
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v5}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    move-result v5

    .line 175
    :cond_1
    move-object v5, v0

    new-instance v6, Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Landroid/support/v7/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 176
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 178
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v4, v5

    .line 180
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 181
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView;

    iput-object v6, v5, Landroid/support/v7/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 182
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    return-void

    .line 160
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_0

    .line 161
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic isOverflowMenuShowPending()Z
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/AbsActionBarView;->isOverflowMenuShowPending()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 2

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 218
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    move v0, v1

    .line 220
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isTitleOptional()Z
    .locals 2

    .prologue
    .line 374
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ActionBarContextView;->mTitleOptional:Z

    move v0, v1

    return v0
.end method

.method public killMode()V
    .locals 3

    .prologue
    .line 194
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->removeAllViews()V

    .line 195
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 196
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 197
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 85
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 86
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v1

    .line 87
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    .line 89
    :cond_0
    return-void
.end method

.method public bridge synthetic onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/AbsActionBarView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 353
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 354
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 356
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 357
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 358
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 359
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/AbsActionBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 20

    .prologue
    .line 317
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v13, v0

    invoke-static {v13}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v13

    move v6, v13

    .line 318
    move v13, v6

    if-eqz v13, :cond_4

    move v13, v4

    move v14, v2

    sub-int/2addr v13, v14

    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/v7/widget/ActionBarContextView;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    :goto_0
    move v7, v13

    .line 319
    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/ActionBarContextView;->getPaddingTop()I

    move-result v13

    move v8, v13

    .line 320
    move v13, v5

    move v14, v3

    sub-int/2addr v13, v14

    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/v7/widget/ActionBarContextView;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/v7/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    move v9, v13

    .line 322
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v13, :cond_0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_0

    .line 323
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v10, v13

    .line 324
    move v13, v6

    if-eqz v13, :cond_5

    move-object v13, v10

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_1
    move v11, v13

    .line 325
    move v13, v6

    if-eqz v13, :cond_6

    move-object v13, v10

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_2
    move v12, v13

    .line 326
    move v13, v7

    move v14, v11

    move v15, v6

    invoke-static {v13, v14, v15}, Landroid/support/v7/widget/ActionBarContextView;->next(IIZ)I

    move-result v13

    move v7, v13

    .line 327
    move v13, v7

    move-object v14, v0

    move-object v15, v0

    iget-object v15, v15, Landroid/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Landroid/support/v7/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v14

    add-int/2addr v13, v14

    move v7, v13

    .line 328
    move v13, v7

    move v14, v12

    move v15, v6

    invoke-static {v13, v14, v15}, Landroid/support/v7/widget/ActionBarContextView;->next(IIZ)I

    move-result v13

    move v7, v13

    .line 331
    :cond_0
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v13, :cond_1

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v13, :cond_1

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_1

    .line 332
    move v13, v7

    move-object v14, v0

    move-object v15, v0

    iget-object v15, v15, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Landroid/support/v7/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v14

    add-int/2addr v13, v14

    move v7, v13

    .line 335
    :cond_1
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v13, :cond_2

    .line 336
    move v13, v7

    move-object v14, v0

    move-object v15, v0

    iget-object v15, v15, Landroid/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Landroid/support/v7/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v14

    add-int/2addr v13, v14

    move v7, v13

    .line 339
    :cond_2
    move v13, v6

    if-eqz v13, :cond_7

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v13

    :goto_3
    move v7, v13

    .line 341
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v13, :cond_3

    .line 342
    move v13, v7

    move-object v14, v0

    move-object v15, v0

    iget-object v15, v15, Landroid/support/v7/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v6

    if-nez v19, :cond_8

    const/16 v19, 0x1

    :goto_4
    invoke-virtual/range {v14 .. v19}, Landroid/support/v7/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v14

    add-int/2addr v13, v14

    move v7, v13

    .line 344
    :cond_3
    return-void

    .line 318
    :cond_4
    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v13

    goto/16 :goto_0

    .line 324
    :cond_5
    move-object v13, v10

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1

    .line 325
    :cond_6
    move-object v13, v10

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 339
    :cond_7
    move v13, v4

    move v14, v2

    sub-int/2addr v13, v14

    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/v7/widget/ActionBarContextView;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    goto :goto_3

    .line 342
    :cond_8
    const/16 v19, 0x0

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 24

    .prologue
    .line 237
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v18, v3

    invoke-static/range {v18 .. v18}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    move/from16 v5, v18

    .line 238
    move/from16 v18, v5

    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 239
    new-instance v18, Ljava/lang/IllegalStateException;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v23, v20

    move-object/from16 v20, v23

    move-object/from16 v21, v23

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " can only be used "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 243
    :cond_0
    move/from16 v18, v4

    invoke-static/range {v18 .. v18}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    move/from16 v6, v18

    .line 244
    move/from16 v18, v6

    if-nez v18, :cond_1

    .line 245
    new-instance v18, Ljava/lang/IllegalStateException;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v23, v20

    move-object/from16 v20, v23

    move-object/from16 v21, v23

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " can only be used "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 249
    :cond_1
    move/from16 v18, v3

    invoke-static/range {v18 .. v18}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    move/from16 v7, v18

    .line 251
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v18, v0

    if-lez v18, :cond_8

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v18, v0

    .line 252
    :goto_0
    move/from16 v8, v18

    .line 254
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/widget/ActionBarContextView;->getPaddingTop()I

    move-result v18

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v9, v18

    .line 255
    move/from16 v18, v7

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v19

    sub-int v18, v18, v19

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/ActionBarContextView;->getPaddingRight()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v10, v18

    .line 256
    move/from16 v18, v8

    move/from16 v19, v9

    sub-int v18, v18, v19

    move/from16 v11, v18

    .line 257
    move/from16 v18, v11

    const/high16 v19, -0x80000000

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move/from16 v12, v18

    .line 259
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 260
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v19, v0

    move/from16 v20, v10

    move/from16 v21, v12

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/support/v7/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v18

    move/from16 v10, v18

    .line 261
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v13, v18

    .line 262
    move/from16 v18, v10

    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v19, v0

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    sub-int v18, v18, v19

    move/from16 v10, v18

    .line 265
    :cond_2
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    move-object/from16 v19, v2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 266
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v19, v0

    move/from16 v20, v10

    move/from16 v21, v12

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/support/v7/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v18

    move/from16 v10, v18

    .line 270
    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v18, v0

    if-nez v18, :cond_5

    .line 271
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionBarContextView;->mTitleOptional:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 272
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move/from16 v13, v18

    .line 273
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move/from16 v19, v13

    move/from16 v20, v12

    invoke-virtual/range {v18 .. v20}, Landroid/widget/LinearLayout;->measure(II)V

    .line 274
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v18

    move/from16 v14, v18

    .line 275
    move/from16 v18, v14

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_9

    const/16 v18, 0x1

    :goto_1
    move/from16 v15, v18

    .line 276
    move/from16 v18, v15

    if-eqz v18, :cond_4

    .line 277
    move/from16 v18, v10

    move/from16 v19, v14

    sub-int v18, v18, v19

    move/from16 v10, v18

    .line 279
    :cond_4
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move/from16 v19, v15

    if-eqz v19, :cond_a

    const/16 v19, 0x0

    :goto_2
    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    :cond_5
    :goto_3
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 286
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v13, v18

    .line 287
    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v0

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    const/high16 v18, 0x40000000    # 2.0f

    :goto_4
    move/from16 v14, v18

    .line 289
    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v0

    if-ltz v18, :cond_d

    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v0

    move/from16 v19, v10

    .line 290
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    :goto_5
    move/from16 v15, v18

    .line 291
    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    const/high16 v18, 0x40000000    # 2.0f

    :goto_6
    move/from16 v16, v18

    .line 293
    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    if-ltz v18, :cond_f

    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v19, v11

    .line 294
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    :goto_7
    move/from16 v17, v18

    .line 295
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v18, v0

    move/from16 v19, v15

    move/from16 v20, v14

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move/from16 v20, v17

    move/from16 v21, v16

    .line 296
    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 295
    invoke-virtual/range {v18 .. v20}, Landroid/view/View;->measure(II)V

    .line 299
    :cond_6
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v18, v0

    if-gtz v18, :cond_11

    .line 300
    const/16 v18, 0x0

    move/from16 v13, v18

    .line 301
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/widget/ActionBarContextView;->getChildCount()I

    move-result v18

    move/from16 v14, v18

    .line 302
    const/16 v18, 0x0

    move/from16 v15, v18

    :goto_8
    move/from16 v18, v15

    move/from16 v19, v14

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_10

    .line 303
    move-object/from16 v18, v2

    move/from16 v19, v15

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v16, v18

    .line 304
    move-object/from16 v18, v16

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v19, v9

    add-int v18, v18, v19

    move/from16 v17, v18

    .line 305
    move/from16 v18, v17

    move/from16 v19, v13

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    .line 306
    move/from16 v18, v17

    move/from16 v13, v18

    .line 302
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 251
    :cond_8
    move/from16 v18, v4

    .line 252
    invoke-static/range {v18 .. v18}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    goto/16 :goto_0

    .line 275
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 279
    :cond_a
    const/16 v19, 0x8

    goto/16 :goto_2

    .line 281
    :cond_b
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move/from16 v20, v10

    move/from16 v21, v12

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/support/v7/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v18

    move/from16 v10, v18

    goto/16 :goto_3

    .line 287
    :cond_c
    const/high16 v18, -0x80000000

    goto/16 :goto_4

    .line 290
    :cond_d
    move/from16 v18, v10

    goto/16 :goto_5

    .line 291
    :cond_e
    const/high16 v18, -0x80000000

    goto/16 :goto_6

    .line 294
    :cond_f
    move/from16 v18, v11

    goto/16 :goto_7

    .line 309
    :cond_10
    move-object/from16 v18, v2

    move/from16 v19, v7

    move/from16 v20, v13

    invoke-virtual/range {v18 .. v20}, Landroid/support/v7/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 313
    :goto_9
    return-void

    .line 311
    :cond_11
    move-object/from16 v18, v2

    move/from16 v19, v7

    move/from16 v20, v8

    invoke-virtual/range {v18 .. v20}, Landroid/support/v7/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_9
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/AbsActionBarView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public setContentHeight(I)V
    .locals 4

    .prologue
    .line 92
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ActionBarContextView;->mContentHeight:I

    .line 93
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 97
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 99
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 100
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 101
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 102
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 104
    :cond_1
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 105
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 107
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContextView;->requestLayout()V

    .line 108
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 117
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/ActionBarContextView;->initTitle()V

    .line 118
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 112
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/ActionBarContextView;->initTitle()V

    .line 113
    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 4

    .prologue
    .line 367
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq v2, v3, :cond_0

    .line 368
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContextView;->requestLayout()V

    .line 370
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ActionBarContextView;->mTitleOptional:Z

    .line 371
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 8

    .prologue
    .line 36
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, v0

    move v5, v1

    move-wide v6, v2

    invoke-super {v4, v5, v6, v7}, Landroid/support/v7/widget/AbsActionBarView;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 2

    .prologue
    .line 348
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 2

    .prologue
    .line 201
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 202
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v1

    move v0, v1

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
