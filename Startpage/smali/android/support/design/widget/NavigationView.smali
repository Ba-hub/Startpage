.class public Landroid/support/design/widget/NavigationView;
.super Landroid/support/design/internal/ScrimInsetsFrameLayout;
.source "NavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/NavigationView$SavedState;,
        Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I

.field private static final PRESENTER_NAVIGATION_VIEW_ID:I = 0x1


# instance fields
.field private mListener:Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;

.field private mMaxWidth:I

.field private final mMenu:Landroid/support/design/internal/NavigationMenu;

.field private mMenuInflater:Landroid/view/MenuInflater;

.field private final mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v0, Landroid/support/design/widget/NavigationView;->CHECKED_STATE_SET:[I

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, -0x101009e

    aput v3, v1, v2

    sput-object v0, Landroid/support/design/widget/NavigationView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/widget/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    .prologue
    .line 101
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    invoke-direct {v10, v11, v12, v13}, Landroid/support/design/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    move-object v10, v0

    new-instance v11, Landroid/support/design/internal/NavigationMenuPresenter;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroid/support/design/internal/NavigationMenuPresenter;-><init>()V

    iput-object v11, v10, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    .line 103
    move-object v10, v1

    invoke-static {v10}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 106
    move-object v10, v0

    new-instance v11, Landroid/support/design/internal/NavigationMenu;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v1

    invoke-direct {v12, v13}, Landroid/support/design/internal/NavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v11, v10, Landroid/support/design/widget/NavigationView;->mMenu:Landroid/support/design/internal/NavigationMenu;

    .line 109
    move-object v10, v1

    move-object v11, v2

    sget-object v12, Landroid/support/design/R$styleable;->NavigationView:[I

    move v13, v3

    sget v14, Landroid/support/design/R$style;->Widget_Design_NavigationView:I

    invoke-static {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v10

    move-object v4, v10

    .line 114
    move-object v10, v0

    move-object v11, v4

    sget v12, Landroid/support/design/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/design/widget/NavigationView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    move-object v10, v4

    sget v11, Landroid/support/design/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 116
    move-object v10, v0

    move-object v11, v4

    sget v12, Landroid/support/design/R$styleable;->NavigationView_elevation:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v10, v11}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 119
    :cond_0
    move-object v10, v0

    move-object v11, v4

    sget v12, Landroid/support/design/R$styleable;->NavigationView_android_fitsSystemWindows:I

    const/4 v13, 0x0

    .line 120
    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 119
    invoke-static {v10, v11}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 122
    move-object v10, v0

    move-object v11, v4

    sget v12, Landroid/support/design/R$styleable;->NavigationView_android_maxWidth:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v10, Landroid/support/design/widget/NavigationView;->mMaxWidth:I

    .line 125
    move-object v10, v4

    sget v11, Landroid/support/design/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 126
    move-object v10, v4

    sget v11, Landroid/support/design/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    move-object v5, v10

    .line 131
    :goto_0
    const/4 v10, 0x0

    move v6, v10

    .line 132
    const/4 v10, 0x0

    move v7, v10

    .line 133
    move-object v10, v4

    sget v11, Landroid/support/design/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 134
    move-object v10, v4

    sget v11, Landroid/support/design/R$styleable;->NavigationView_itemTextAppearance:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v10

    move v7, v10

    .line 135
    const/4 v10, 0x1

    move v6, v10

    .line 138
    :cond_1
    const/4 v10, 0x0

    move-object v8, v10

    .line 139
    move-object v10, v4

    sget v11, Landroid/support/design/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 140
    move-object v10, v4

    sget v11, Landroid/support/design/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    move-object v8, v10

    .line 143
    :cond_2
    move v10, v6

    if-nez v10, :cond_3

    move-object v10, v8

    if-nez v10, :cond_3

    .line 145
    move-object v10, v0

    const v11, 0x1010036

    invoke-direct {v10, v11}, Landroid/support/design/widget/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    move-object v8, v10

    .line 148
    :cond_3
    move-object v10, v4

    sget v11, Landroid/support/design/R$styleable;->NavigationView_itemBackground:I

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object v9, v10

    .line 150
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/NavigationView;->mMenu:Landroid/support/design/internal/NavigationMenu;

    new-instance v11, Landroid/support/design/widget/NavigationView$1;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    invoke-direct {v12, v13}, Landroid/support/design/widget/NavigationView$1;-><init>(Landroid/support/design/widget/NavigationView;)V

    invoke-virtual {v10, v11}, Landroid/support/design/internal/NavigationMenu;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 159
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/design/internal/NavigationMenuPresenter;->setId(I)V

    .line 160
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/NavigationView;->mMenu:Landroid/support/design/internal/NavigationMenu;

    invoke-virtual {v10, v11, v12}, Landroid/support/design/internal/NavigationMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 161
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object v11, v5

    invoke-virtual {v10, v11}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 162
    move v10, v6

    if-eqz v10, :cond_4

    .line 163
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    move v11, v7

    invoke-virtual {v10, v11}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    .line 165
    :cond_4
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object v11, v8

    invoke-virtual {v10, v11}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 166
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object v11, v9

    invoke-virtual {v10, v11}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 167
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/NavigationView;->mMenu:Landroid/support/design/internal/NavigationMenu;

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v10, v11}, Landroid/support/design/internal/NavigationMenu;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 168
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object v12, v0

    invoke-virtual {v11, v12}, Landroid/support/design/internal/NavigationMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/support/design/widget/NavigationView;->addView(Landroid/view/View;)V

    .line 170
    move-object v10, v4

    sget v11, Landroid/support/design/R$styleable;->NavigationView_menu:I

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 171
    move-object v10, v0

    move-object v11, v4

    sget v12, Landroid/support/design/R$styleable;->NavigationView_menu:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/support/design/widget/NavigationView;->inflateMenu(I)V

    .line 174
    :cond_5
    move-object v10, v4

    sget v11, Landroid/support/design/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 175
    move-object v10, v0

    move-object v11, v4

    sget v12, Landroid/support/design/R$styleable;->NavigationView_headerLayout:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/support/design/widget/NavigationView;->inflateHeaderView(I)Landroid/view/View;

    move-result-object v10

    .line 178
    :cond_6
    move-object v10, v4

    invoke-virtual {v10}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 179
    return-void

    .line 128
    :cond_7
    move-object v10, v0

    const v11, 0x1010038

    invoke-direct {v10, v11}, Landroid/support/design/widget/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    move-object v5, v10

    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/support/design/widget/NavigationView;)Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/NavigationView;->mListener:Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;

    move-object v0, v1

    return-object v0
.end method

.method private createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 16

    .prologue
    .line 414
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v6, Landroid/util/TypedValue;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v6

    .line 415
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move v7, v1

    move-object v8, v2

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 416
    const/4 v6, 0x0

    move-object v0, v6

    .line 431
    :goto_0
    return-object v0

    .line 418
    :cond_0
    move-object v6, v0

    .line 419
    invoke-virtual {v6}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v2

    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    .line 418
    invoke-static {v6, v7}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v3, v6

    .line 420
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget v7, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    move-object v8, v2

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 422
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 424
    :cond_1
    move-object v6, v2

    iget v6, v6, Landroid/util/TypedValue;->data:I

    move v4, v6

    .line 425
    move-object v6, v3

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    move v5, v6

    .line 426
    new-instance v6, Landroid/content/res/ColorStateList;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    const/4 v8, 0x3

    new-array v8, v8, [[I

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    sget-object v11, Landroid/support/design/widget/NavigationView;->DISABLED_STATE_SET:[I

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x1

    sget-object v11, Landroid/support/design/widget/NavigationView;->CHECKED_STATE_SET:[I

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x2

    sget-object v11, Landroid/support/design/widget/NavigationView;->EMPTY_STATE_SET:[I

    aput-object v11, v9, v10

    const/4 v9, 0x3

    new-array v9, v9, [I

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    move-object v12, v3

    sget-object v13, Landroid/support/design/widget/NavigationView;->DISABLED_STATE_SET:[I

    move v14, v5

    .line 431
    invoke-virtual {v12, v13, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v12

    aput v12, v10, v11

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x1

    move v12, v4

    aput v12, v10, v11

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x2

    move v12, v5

    aput v12, v10, v11

    invoke-direct {v7, v8, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v6

    goto :goto_0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 6

    .prologue
    .line 407
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/NavigationView;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v1, :cond_0

    .line 408
    move-object v1, v0

    new-instance v2, Landroid/support/v7/view/SupportMenuInflater;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroid/support/design/widget/NavigationView;->mMenuInflater:Landroid/view/MenuInflater;

    .line 410
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/NavigationView;->mMenuInflater:Landroid/view/MenuInflater;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 274
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuPresenter;->addHeaderView(Landroid/view/View;)V

    .line 275
    return-void
.end method

.method public getHeaderCount()I
    .locals 2

    .prologue
    .line 292
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->getHeaderCount()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 303
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuPresenter;->getHeaderView(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 361
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->getItemTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 338
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v1}, Landroid/support/design/internal/NavigationMenuPresenter;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/NavigationView;->mMenu:Landroid/support/design/internal/NavigationMenu;

    move-object v0, v1

    return-object v0
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 265
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuPresenter;->inflateHeaderView(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public inflateMenu(I)V
    .locals 5

    .prologue
    .line 245
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 246
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/NavigationView;->mMenu:Landroid/support/design/internal/NavigationMenu;

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 247
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 248
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 249
    return-void
.end method

.method protected onInsetsChanged(Landroid/support/v4/view/WindowInsetsCompat;)V
    .locals 4

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuPresenter;->dispatchApplyWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)V

    .line 235
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 213
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 226
    :goto_0
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onMeasure(II)V

    .line 227
    return-void

    .line 216
    :sswitch_0
    goto :goto_0

    .line 218
    :sswitch_1
    move v3, v1

    .line 219
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/NavigationView;->mMaxWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    .line 218
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move v1, v3

    .line 220
    goto :goto_0

    .line 222
    :sswitch_2
    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/NavigationView;->mMaxWidth:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move v1, v3

    goto :goto_0

    .line 213
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Landroid/support/design/widget/NavigationView$SavedState;

    if-nez v3, :cond_0

    .line 193
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    move-object v3, v1

    check-cast v3, Landroid/support/design/widget/NavigationView$SavedState;

    move-object v2, v3

    .line 197
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/design/widget/NavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {v3, v4}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 198
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/NavigationView;->mMenu:Landroid/support/design/internal/NavigationMenu;

    move-object v4, v2

    iget-object v4, v4, Landroid/support/design/widget/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenu;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 199
    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 183
    move-object v0, p0

    move-object v3, v0

    invoke-super {v3}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    .line 184
    new-instance v3, Landroid/support/design/widget/NavigationView$SavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/design/widget/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v3

    .line 185
    move-object v3, v2

    new-instance v4, Landroid/os/Bundle;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v3, Landroid/support/design/widget/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    .line 186
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/NavigationView;->mMenu:Landroid/support/design/internal/NavigationMenu;

    move-object v4, v2

    iget-object v4, v4, Landroid/support/design/widget/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenu;->savePresenterStates(Landroid/os/Bundle;)V

    .line 187
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuPresenter;->removeHeaderView(Landroid/view/View;)V

    .line 284
    return-void
.end method

.method public setCheckedItem(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 391
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/NavigationView;->mMenu:Landroid/support/design/internal/NavigationMenu;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    move-object v2, v3

    .line 392
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 393
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object v4, v2

    check-cast v4, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenuPresenter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 395
    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 382
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 383
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 372
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 373
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 326
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 327
    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 403
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    .line 404
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 349
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/NavigationView;->mPresenter:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 350
    return-void
.end method

.method public setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V
    .locals 4
    .param p1    # Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 208
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/NavigationView;->mListener:Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;

    .line 209
    return-void
.end method
