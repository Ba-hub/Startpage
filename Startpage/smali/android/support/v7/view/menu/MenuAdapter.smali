.class public Landroid/support/v7/view/menu/MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuAdapter.java"


# static fields
.field static final ITEM_LAYOUT:I


# instance fields
.field mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field private mForceShowIcon:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mOverflowOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_popup_menu_item_layout:I

    sput v0, Landroid/support/v7/view/menu/MenuAdapter;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I

    .line 41
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Landroid/support/v7/view/menu/MenuAdapter;->mOverflowOnly:Z

    .line 42
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/view/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 44
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuAdapter;->findExpandedIndex()V

    .line 45
    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 8

    .prologue
    .line 101
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->getExpandedItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v6

    move-object v1, v6

    .line 102
    move-object v6, v1

    if-eqz v6, :cond_1

    .line 103
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v6

    move-object v2, v6

    .line 104
    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 105
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 106
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v5, v6

    .line 107
    move-object v6, v5

    move-object v7, v1

    if-ne v6, v7, :cond_0

    .line 108
    move-object v6, v0

    move v7, v4

    iput v7, v6, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I

    .line 114
    :goto_1
    return-void

    .line 105
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 113
    :cond_1
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I

    .line 114
    goto :goto_1
.end method

.method public getAdapterMenu()Landroid/support/v7/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v0, v1

    return-object v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/view/menu/MenuAdapter;->mOverflowOnly:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 58
    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    move-object v1, v2

    .line 59
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I

    if-gez v2, :cond_1

    .line 60
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v0, v2

    .line 62
    :goto_1
    return v0

    .line 58
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 62
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_1
.end method

.method public getForceShowIcon()Z
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/view/menu/MenuAdapter;->mForceShowIcon:Z

    move v0, v1

    return v0
.end method

.method public getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 5

    .prologue
    .line 71
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/view/menu/MenuAdapter;->mOverflowOnly:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 72
    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v3

    :goto_0
    move-object v2, v3

    .line 73
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I

    if-lt v3, v4, :cond_0

    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 76
    :cond_0
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v0, v3

    return-object v0

    .line 72
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 29
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    move v1, p1

    move v2, v1

    int-to-long v2, v2

    move-wide v0, v2

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    .line 88
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v2

    if-nez v5, :cond_0

    .line 89
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v6, Landroid/support/v7/view/menu/MenuAdapter;->ITEM_LAYOUT:I

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 92
    :cond_0
    move-object v5, v2

    check-cast v5, Landroid/support/v7/view/menu/MenuView$ItemView;

    move-object v4, v5

    .line 93
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/view/menu/MenuAdapter;->mForceShowIcon:Z

    if-eqz v5, :cond_1

    .line 94
    move-object v5, v2

    check-cast v5, Landroid/support/v7/view/menu/ListMenuItemView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 96
    :cond_1
    move-object v5, v4

    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/support/v7/view/menu/MenuView$ItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 97
    move-object v5, v2

    move-object v0, v5

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuAdapter;->findExpandedIndex()V

    .line 119
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 120
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/MenuAdapter;->mForceShowIcon:Z

    .line 53
    return-void
.end method
