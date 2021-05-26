.class public Landroid/support/design/internal/NavigationMenuPresenter;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;,
        Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;,
        Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;,
        Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;,
        Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;,
        Landroid/support/design/internal/NavigationMenuPresenter$HeaderViewHolder;,
        Landroid/support/design/internal/NavigationMenuPresenter$SeparatorViewHolder;,
        Landroid/support/design/internal/NavigationMenuPresenter$SubheaderViewHolder;,
        Landroid/support/design/internal/NavigationMenuPresenter$NormalViewHolder;,
        Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;
    }
.end annotation


# static fields
.field private static final STATE_ADAPTER:Ljava/lang/String; = "android:menu:adapter"

.field private static final STATE_HIERARCHY:Ljava/lang/String; = "android:menu:list"


# instance fields
.field private mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

.field private mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mHeaderLayout:Landroid/widget/LinearLayout;

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mId:I

.field private mItemBackground:Landroid/graphics/drawable/Drawable;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mMenuView:Landroid/support/design/internal/NavigationMenuView;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPaddingSeparator:I

.field private mPaddingTopDefault:I

.field private mTextAppearance:I

.field private mTextAppearanceSet:Z

.field private mTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 321
    move-object v1, v0

    new-instance v2, Landroid/support/design/internal/NavigationMenuPresenter$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/design/internal/NavigationMenuPresenter$1;-><init>(Landroid/support/design/internal/NavigationMenuPresenter;)V

    iput-object v2, v1, Landroid/support/design/internal/NavigationMenuPresenter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 652
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/design/internal/NavigationMenuPresenter;)I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->mPaddingSeparator:I

    move v0, v1

    return v0
.end method

.method static synthetic access$200(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->mHeaderLayout:Landroid/widget/LinearLayout;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->mIconTintList:Landroid/content/res/ColorStateList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/design/internal/NavigationMenuPresenter;)Z
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->mTextAppearanceSet:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$700(Landroid/support/design/internal/NavigationMenuPresenter;)I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->mTextAppearance:I

    move v0, v1

    return v0
.end method

.method static synthetic access$800(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->mTextColor:Landroid/content/res/ColorStateList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->mItemBackground:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mHeaderLayout:Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v6}, Landroid/support/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/design/internal/NavigationMenuView;->setPadding(IIII)V

    .line 206
    return-void
.end method

.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public dispatchApplyWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)V
    .locals 8

    .prologue
    .line 266
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    move v2, v3

    .line 267
    move-object v3, v0

    iget v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->mPaddingTopDefault:I

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 268
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/design/internal/NavigationMenuPresenter;->mPaddingTopDefault:I

    .line 269
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 270
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Landroid/support/design/internal/NavigationMenuPresenter;->mPaddingTopDefault:I

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v7}, Landroid/support/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/design/internal/NavigationMenuView;->setPadding(IIII)V

    .line 273
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->mHeaderLayout:Landroid/widget/LinearLayout;

    move-object v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v3

    .line 274
    return-void
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public flagActionItems()Z
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getHeaderCount()I
    .locals 2

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 220
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mHeaderLayout:Landroid/widget/LinearLayout;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->mId:I

    move v0, v1

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->mItemBackground:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->mTextColor:Landroid/content/res/ColorStateList;

    move-object v0, v1

    return-object v0
.end method

.method public getItemTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 225
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->mIconTintList:Landroid/content/res/ColorStateList;

    move-object v0, v1

    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
    .locals 8

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    if-nez v2, :cond_1

    .line 96
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v4, Landroid/support/design/R$layout;->design_navigation_menu:I

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/design/internal/NavigationMenuView;

    iput-object v3, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    .line 98
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-nez v2, :cond_0

    .line 99
    move-object v2, v0

    new-instance v3, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;-><init>(Landroid/support/design/internal/NavigationMenuPresenter;)V

    iput-object v3, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 101
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v4, Landroid/support/design/R$layout;->design_navigation_item_header:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    const/4 v6, 0x0

    .line 102
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 104
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 106
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    move-object v0, v2

    return-object v0
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .locals 7
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 197
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 198
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenuPresenter;->addHeaderView(Landroid/view/View;)V

    .line 199
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 7

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, v4, Landroid/support/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 87
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/design/internal/NavigationMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 88
    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v3, v4

    .line 89
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$dimen;->design_navigation_separator_vertical_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v4, Landroid/support/design/internal/NavigationMenuPresenter;->mPaddingSeparator:I

    .line 91
    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 6

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v3, :cond_0

    .line 129
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    move-object v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 131
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    instance-of v5, v5, Landroid/os/Bundle;

    if-eqz v5, :cond_1

    .line 180
    move-object v5, v1

    check-cast v5, Landroid/os/Bundle;

    move-object v2, v5

    .line 181
    move-object v5, v2

    const-string v6, "android:menu:list"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v5

    move-object v3, v5

    .line 182
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 183
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/design/internal/NavigationMenuView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 185
    :cond_0
    move-object v5, v2

    const-string v6, "android:menu:adapter"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v4, v5

    .line 186
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 187
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 190
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_2

    .line 163
    new-instance v3, Landroid/os/Bundle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v1, v3

    .line 164
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    if-eqz v3, :cond_0

    .line 165
    new-instance v3, Landroid/util/SparseArray;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v3

    .line 166
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenuView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 167
    move-object v3, v1

    const-string v4, "android:menu:list"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 169
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v3, :cond_1

    .line 170
    move-object v3, v1

    const-string v4, "android:menu:adapter"

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v5}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->createInstanceState()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 172
    :cond_1
    move-object v3, v1

    move-object v0, v3

    .line 174
    :goto_0
    return-object v0

    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 3

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mHeaderLayout:Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 210
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 211
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Landroid/support/design/internal/NavigationMenuPresenter;->mPaddingTopDefault:I

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v6}, Landroid/support/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/design/internal/NavigationMenuView;->setPadding(IIII)V

    .line 213
    :cond_0
    return-void
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 119
    return-void
.end method

.method public setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 4

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 194
    return-void
.end method

.method public setId(I)V
    .locals 4

    .prologue
    .line 154
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mId:I

    .line 155
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mItemBackground:Landroid/graphics/drawable/Drawable;

    .line 256
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 257
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 229
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 230
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 231
    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 244
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mTextAppearance:I

    .line 245
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mTextAppearanceSet:Z

    .line 246
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 247
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mTextColor:Landroid/content/res/ColorStateList;

    .line 240
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 241
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 4

    .prologue
    .line 260
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v2, :cond_0

    .line 261
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setUpdateSuspended(Z)V

    .line 263
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v2, :cond_0

    .line 112
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->update()V

    .line 114
    :cond_0
    return-void
.end method
