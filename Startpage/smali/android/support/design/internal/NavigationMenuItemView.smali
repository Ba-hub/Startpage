.class public Landroid/support/design/internal/NavigationMenuItemView;
.super Landroid/support/design/internal/ForegroundLinearLayout;
.source "NavigationMenuItemView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView$ItemView;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private final mAccessibilityDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

.field private mActionArea:Landroid/widget/FrameLayout;

.field private mCheckable:Z

.field private mEmptyDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasIconTintList:Z

.field private final mIconSize:I

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

.field private mNeedsEmptyIcon:Z

.field private final mTextView:Landroid/widget/CheckedTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v0, Landroid/support/design/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/design/internal/ForegroundLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    move-object v4, v0

    new-instance v5, Landroid/support/design/internal/NavigationMenuItemView$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/design/internal/NavigationMenuItemView$1;-><init>(Landroid/support/design/internal/NavigationMenuItemView;)V

    iput-object v5, v4, Landroid/support/design/internal/NavigationMenuItemView;->mAccessibilityDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    .line 90
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/design/internal/NavigationMenuItemView;->setOrientation(I)V

    .line 91
    move-object v4, v1

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Landroid/support/design/R$layout;->design_navigation_menu_item:I

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 92
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/design/R$dimen;->design_navigation_icon_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/support/design/internal/NavigationMenuItemView;->mIconSize:I

    .line 94
    move-object v4, v0

    move-object v5, v0

    sget v6, Landroid/support/design/R$id;->design_menu_item_text:I

    invoke-virtual {v5, v6}, Landroid/support/design/internal/NavigationMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckedTextView;

    iput-object v5, v4, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    .line 95
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setDuplicateParentStateEnabled(Z)V

    .line 96
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuItemView;->mAccessibilityDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/internal/NavigationMenuItemView;)Z
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/internal/NavigationMenuItemView;->mCheckable:Z

    move v0, v1

    return v0
.end method

.method private adjustAppearance()V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/internal/NavigationMenuItemView;->shouldExpandActionArea()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 128
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 129
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object v1, v2

    .line 130
    move-object v2, v1

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 131
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 135
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 136
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object v1, v2

    .line 137
    move-object v2, v1

    const/4 v3, -0x2

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 138
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private createDefaultBackground()Landroid/graphics/drawable/StateListDrawable;
    .locals 9

    .prologue
    .line 162
    move-object v0, p0

    new-instance v3, Landroid/util/TypedValue;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v1, v3

    .line 163
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$attr;->colorControlHighlight:I

    move-object v5, v1

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move-object v2, v3

    .line 166
    move-object v3, v2

    sget-object v4, Landroid/support/design/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    iget v7, v7, Landroid/util/TypedValue;->data:I

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 167
    move-object v3, v2

    sget-object v4, Landroid/support/design/internal/NavigationMenuItemView;->EMPTY_STATE_SET:[I

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 168
    move-object v3, v2

    move-object v0, v3

    .line 170
    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private setActionView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_1

    .line 152
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    .line 153
    move-object v2, v0

    move-object v3, v0

    sget v4, Landroid/support/design/R$id;->design_menu_item_action_area_stub:I

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    .line 154
    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v2, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    .line 156
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 157
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 159
    :cond_1
    return-void
.end method

.method private shouldExpandActionArea()Z
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 120
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 121
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v0, v1

    return-object v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
    .locals 5

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 103
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;->setVisibility(I)V

    .line 105
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/internal/NavigationMenuItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 106
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/design/internal/NavigationMenuItemView;->createDefaultBackground()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;->setCheckable(Z)V

    .line 110
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;->setChecked(Z)V

    .line 111
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;->setEnabled(Z)V

    .line 112
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 114
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;->setActionView(Landroid/view/View;)V

    .line 115
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/internal/NavigationMenuItemView;->adjustAppearance()V

    .line 116
    return-void

    .line 103
    :cond_1
    const/16 v4, 0x8

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6

    .prologue
    .line 237
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-super {v3, v4}, Landroid/support/design/internal/ForegroundLinearLayout;->onCreateDrawableState(I)[I

    move-result-object v3

    move-object v2, v3

    .line 238
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    move-object v3, v2

    sget-object v4, Landroid/support/design/internal/NavigationMenuItemView;->CHECKED_STATE_SET:[I

    invoke-static {v3, v4}, Landroid/support/design/internal/NavigationMenuItemView;->mergeDrawableStates([I[I)[I

    move-result-object v3

    .line 241
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public prefersCondensedTitle()Z
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public recycle()V
    .locals 6

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 145
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuItemView;->mActionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 147
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/CheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 148
    return-void
.end method

.method public setCheckable(Z)V
    .locals 5

    .prologue
    .line 185
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 186
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mCheckable:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 187
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/internal/NavigationMenuItemView;->mCheckable:Z

    .line 188
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mAccessibilityDelegate:Landroid/support/v4/view/AccessibilityDelegateCompat;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    const/16 v4, 0x800

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 191
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 196
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 197
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    .prologue
    .line 205
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-eqz v3, :cond_3

    .line 206
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/internal/NavigationMenuItemView;->mHasIconTintList:Z

    if-eqz v3, :cond_0

    .line 207
    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    move-object v2, v3

    .line 208
    move-object v3, v2

    if-nez v3, :cond_2

    move-object v3, v1

    :goto_0
    invoke-static {v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v1, v3

    .line 209
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/internal/NavigationMenuItemView;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-static {v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 211
    :cond_0
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Landroid/support/design/internal/NavigationMenuItemView;->mIconSize:I

    move-object v7, v0

    iget v7, v7, Landroid/support/design/internal/NavigationMenuItemView;->mIconSize:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 222
    :cond_1
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 223
    return-void

    .line 208
    :cond_2
    move-object v3, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 212
    :cond_3
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/internal/NavigationMenuItemView;->mNeedsEmptyIcon:Z

    if-eqz v3, :cond_1

    .line 213
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuItemView;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    .line 214
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/internal/NavigationMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/design/R$drawable;->navigation_empty_icon:I

    move-object v6, v0

    .line 215
    invoke-virtual {v6}, Landroid/support/design/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 214
    invoke-static {v4, v5, v6}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Landroid/support/design/internal/NavigationMenuItemView;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 216
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuItemView;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    .line 217
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuItemView;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Landroid/support/design/internal/NavigationMenuItemView;->mIconSize:I

    move-object v7, v0

    iget v7, v7, Landroid/support/design/internal/NavigationMenuItemView;->mIconSize:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 220
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuItemView;->mEmptyDrawable:Landroid/graphics/drawable/Drawable;

    move-object v1, v3

    goto :goto_1
.end method

.method setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/internal/NavigationMenuItemView;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 246
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuItemView;->mIconTintList:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroid/support/design/internal/NavigationMenuItemView;->mHasIconTintList:Z

    .line 247
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 249
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 251
    :cond_0
    return-void

    .line 246
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setNeedsEmptyIcon(Z)V
    .locals 4

    .prologue
    .line 262
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/internal/NavigationMenuItemView;->mNeedsEmptyIcon:Z

    .line 263
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 6

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 255
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 259
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuItemView;->mTextView:Landroid/widget/CheckedTextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method

.method public showsIcon()Z
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method
