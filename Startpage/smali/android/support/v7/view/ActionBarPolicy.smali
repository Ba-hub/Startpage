.class public Landroid/support/v7/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public static get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    new-instance v1, Landroid/support/v7/view/ActionBarPolicy;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v7/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .locals 3

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEmbeddedMenuWidthLimit()I
    .locals 3

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x2

    div-int/lit8 v1, v1, 0x2

    move v0, v1

    return v0
.end method

.method public getMaxActionButtons()I
    .locals 7

    .prologue
    .line 54
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v1, v5

    .line 55
    move-object v5, v1

    invoke-static {v5}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v5

    move v2, v5

    .line 56
    move-object v5, v1

    invoke-static {v5}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v5

    move v3, v5

    .line 57
    move-object v5, v1

    invoke-static {v5}, Landroid/support/v4/content/res/ConfigurationHelper;->getSmallestScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v5

    move v4, v5

    .line 59
    move v5, v4

    const/16 v6, 0x258

    if-gt v5, v6, :cond_1

    move v5, v2

    const/16 v6, 0x258

    if-gt v5, v6, :cond_1

    move v5, v2

    const/16 v6, 0x3c0

    if-le v5, v6, :cond_0

    move v5, v3

    const/16 v6, 0x2d0

    if-gt v5, v6, :cond_1

    :cond_0
    move v5, v2

    const/16 v6, 0x2d0

    if-le v5, v6, :cond_2

    move v5, v3

    const/16 v6, 0x3c0

    if-le v5, v6, :cond_2

    .line 62
    :cond_1
    const/4 v5, 0x5

    move v0, v5

    .line 71
    :goto_0
    return v0

    .line 63
    :cond_2
    move v5, v2

    const/16 v6, 0x1f4

    if-ge v5, v6, :cond_4

    move v5, v2

    const/16 v6, 0x280

    if-le v5, v6, :cond_3

    move v5, v3

    const/16 v6, 0x1e0

    if-gt v5, v6, :cond_4

    :cond_3
    move v5, v2

    const/16 v6, 0x1e0

    if-le v5, v6, :cond_5

    move v5, v3

    const/16 v6, 0x280

    if-le v5, v6, :cond_5

    .line 66
    :cond_4
    const/4 v5, 0x4

    move v0, v5

    goto :goto_0

    .line 67
    :cond_5
    move v5, v2

    const/16 v6, 0x168

    if-lt v5, v6, :cond_6

    .line 69
    const/4 v5, 0x3

    move v0, v5

    goto :goto_0

    .line 71
    :cond_6
    const/4 v5, 0x2

    move v0, v5

    goto :goto_0
.end method

.method public getStackedTabMaxWidth()I
    .locals 3

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$dimen;->abc_action_bar_stacked_tab_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getTabContainerHeight()I
    .locals 9

    .prologue
    .line 92
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    sget-object v6, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v7, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v1, v4

    .line 94
    move-object v4, v1

    sget v5, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    move v2, v4

    .line 95
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v3, v4

    .line 96
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 98
    move v4, v2

    move-object v5, v3

    sget v6, Landroid/support/v7/appcompat/R$dimen;->abc_action_bar_stacked_max_height:I

    .line 99
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 98
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v2, v4

    .line 101
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    move v4, v2

    move v0, v4

    return v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 3

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public showsOverflowMenuButton()Z
    .locals 3

    .prologue
    .line 76
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 77
    const/4 v1, 0x1

    move v0, v1

    .line 79
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
