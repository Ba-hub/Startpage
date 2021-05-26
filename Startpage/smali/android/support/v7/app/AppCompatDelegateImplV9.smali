.class Landroid/support/v7/app/AppCompatDelegateImplV9;
.super Landroid/support/v7/app/AppCompatDelegateImplBase;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;
.implements Landroid/support/v4/view/LayoutInflaterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;,
        Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;,
        Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;,
        Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;,
        Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;
    }
.end annotation


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

.field mActionMode:Landroid/support/v7/view/ActionMode;

.field mActionModePopup:Landroid/widget/PopupWindow;

.field mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

.field private mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

.field private mClosingActionMenu:Z

.field private mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

.field private mEnableDefaultActionBarUp:Z

.field mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mFeatureIndeterminateProgress:Z

.field private mFeatureProgress:Z

.field private mInvalidatePanelMenuFeatures:I

.field private mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mLongPressBackDown:Z

.field private mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

.field private mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

.field private mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

.field mShowActionModePopup:Ljava/lang/Runnable;

.field private mStatusGuard:Landroid/view/View;

.field private mSubDecor:Landroid/view/ViewGroup;

.field private mSubDecorInstalled:Z

.field private mTempRect1:Landroid/graphics/Rect;

.field private mTempRect2:Landroid/graphics/Rect;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .locals 9

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplBase;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 104
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 125
    move-object v4, v0

    new-instance v5, Landroid/support/v7/app/AppCompatDelegateImplV9$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9$1;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 148
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/app/AppCompatDelegateImplV9;)I
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    move v0, v1

    return v0
.end method

.method static synthetic access$002(Landroid/support/v7/app/AppCompatDelegateImplV9;I)I
    .locals 7

    .prologue
    .line 93
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    move v0, v2

    return v0
.end method

.method static synthetic access$100(Landroid/support/v7/app/AppCompatDelegateImplV9;I)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->doInvalidatePanelMenu(I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
    .locals 6

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    return-void
.end method

.method static synthetic access$1100(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/v7/app/AppCompatDelegateImplV9;I)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(I)V

    return-void
.end method

.method static synthetic access$202(Landroid/support/v7/app/AppCompatDelegateImplV9;Z)Z
    .locals 7

    .prologue
    .line 93
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$300(Landroid/support/v7/app/AppCompatDelegateImplV9;I)I
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->updateStatusGuard(I)I

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic access$400(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->dismissPopups()V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/v7/app/AppCompatDelegateImplV9;ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V
    .locals 8

    .prologue
    .line 93
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9;->callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method private applyFixedSizeWindow()V
    .locals 9

    .prologue
    .line 523
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ContentFrameLayout;

    move-object v1, v4

    .line 529
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    .line 530
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    move-object v6, v2

    .line 531
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    move-object v8, v2

    .line 532
    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    .line 530
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/ContentFrameLayout;->setDecorPadding(IIII)V

    .line 534
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 535
    move-object v4, v3

    sget v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v4

    .line 536
    move-object v4, v3

    sget v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v4

    .line 538
    move-object v4, v3

    sget v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 539
    move-object v4, v3

    sget v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    move-object v6, v1

    .line 540
    invoke-virtual {v6}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    .line 539
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v4

    .line 542
    :cond_0
    move-object v4, v3

    sget v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 543
    move-object v4, v3

    sget v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    move-object v6, v1

    .line 544
    invoke-virtual {v6}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    .line 543
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v4

    .line 546
    :cond_1
    move-object v4, v3

    sget v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 547
    move-object v4, v3

    sget v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    move-object v6, v1

    .line 548
    invoke-virtual {v6}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v6

    .line 547
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v4

    .line 550
    :cond_2
    move-object v4, v3

    sget v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 551
    move-object v4, v3

    sget v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    move-object v6, v1

    .line 552
    invoke-virtual {v6}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v6

    .line 551
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v4

    .line 554
    :cond_3
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 556
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    .line 557
    return-void
.end method

.method private callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V
    .locals 7

    .prologue
    .line 1522
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v3

    if-nez v4, :cond_1

    .line 1524
    move-object v4, v2

    if-nez v4, :cond_0

    .line 1525
    move v4, v1

    if-ltz v4, :cond_0

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 1526
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move v5, v1

    aget-object v4, v4, v5

    move-object v2, v4

    .line 1530
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 1532
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v3, v4

    .line 1537
    :cond_1
    move-object v4, v2

    if-eqz v4, :cond_2

    move-object v4, v2

    iget-boolean v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_2

    .line 1546
    :goto_0
    return-void

    .line 1540
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1544
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    move v5, v1

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1546
    :cond_3
    goto :goto_0
.end method

.method private checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 6

    .prologue
    .line 1407
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mClosingActionMenu:Z

    if-eqz v3, :cond_0

    .line 1418
    :goto_0
    return-void

    .line 1411
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mClosingActionMenu:Z

    .line 1412
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v3}, Landroid/support/v7/widget/DecorContentParent;->dismissPopups()V

    .line 1413
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v3

    move-object v2, v3

    .line 1414
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1415
    move-object v3, v2

    const/16 v4, 0x6c

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1417
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mClosingActionMenu:Z

    .line 1418
    goto :goto_0
.end method

.method private closePanel(I)V
    .locals 6

    .prologue
    .line 1421
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1422
    return-void
.end method

.method private closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
    .locals 8

    .prologue
    .line 1425
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v2

    if-eqz v4, :cond_0

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 1426
    invoke-interface {v4}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1427
    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1454
    :goto_0
    return-void

    .line 1431
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    move-object v3, v4

    .line 1432
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-eqz v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 1433
    move-object v4, v3

    move-object v5, v1

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1435
    move v4, v2

    if-eqz v4, :cond_1

    .line 1436
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9;->callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V

    .line 1440
    :cond_1
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 1441
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    .line 1442
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    .line 1445
    move-object v4, v1

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1449
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    .line 1451
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-object v5, v1

    if-ne v4, v5, :cond_2

    .line 1452
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .line 1454
    :cond_2
    goto :goto_0
.end method

.method private createSubDecor()Landroid/view/ViewGroup;
    .locals 13

    .prologue
    .line 343
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v7, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v1, v7

    .line 345
    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 346
    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 347
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 351
    :cond_0
    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowNoTitle:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 352
    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    move-result v7

    .line 357
    :cond_1
    :goto_0
    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 358
    move-object v7, v0

    const/16 v8, 0x6d

    invoke-virtual {v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    move-result v7

    .line 360
    :cond_2
    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 361
    move-object v7, v0

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    move-result v7

    .line 363
    :cond_3
    move-object v7, v0

    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mIsFloating:Z

    .line 364
    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 367
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 369
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    move-object v2, v7

    .line 370
    const/4 v7, 0x0

    move-object v3, v7

    .line 373
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    if-nez v7, :cond_b

    .line 374
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mIsFloating:Z

    if-eqz v7, :cond_6

    .line 376
    move-object v7, v2

    sget v8, Landroid/support/v7/appcompat/R$layout;->abc_dialog_title_material:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v3, v7

    .line 380
    move-object v7, v0

    move-object v8, v0

    const/4 v9, 0x0

    move-object v11, v8

    move v12, v9

    move v8, v12

    move-object v9, v11

    move v10, v12

    iput-boolean v10, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    iput-boolean v8, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    .line 461
    :cond_4
    :goto_1
    move-object v7, v3

    if-nez v7, :cond_e

    .line 462
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", windowActionBarOverlay: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", android:windowIsFloating: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV9;->mIsFloating:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", windowActionModeOverlay: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", windowNoTitle: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " }"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 353
    :cond_5
    move-object v7, v1

    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 355
    move-object v7, v0

    const/16 v8, 0x6c

    invoke-virtual {v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    move-result v7

    goto/16 :goto_0

    .line 381
    :cond_6
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v7, :cond_4

    .line 387
    new-instance v7, Landroid/util/TypedValue;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    move-object v4, v7

    .line 388
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget v8, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    move-object v9, v4

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v7

    .line 391
    move-object v7, v4

    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_a

    .line 392
    new-instance v7, Landroid/support/v7/view/ContextThemeWrapper;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    move-object v10, v4

    iget v10, v10, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v8, v9, v10}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v5, v7

    .line 398
    :goto_2
    move-object v7, v5

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Landroid/support/v7/appcompat/R$layout;->abc_screen_toolbar:I

    const/4 v9, 0x0

    .line 399
    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v3, v7

    .line 401
    move-object v7, v0

    move-object v8, v3

    sget v9, Landroid/support/v7/appcompat/R$id;->decor_content_parent:I

    .line 402
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/DecorContentParent;

    iput-object v8, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 403
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/support/v7/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 408
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    if-eqz v7, :cond_7

    .line 409
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/16 v8, 0x6d

    invoke-interface {v7, v8}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 411
    :cond_7
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureProgress:Z

    if-eqz v7, :cond_8

    .line 412
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 414
    :cond_8
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureIndeterminateProgress:Z

    if-eqz v7, :cond_9

    .line 415
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/4 v8, 0x5

    invoke-interface {v7, v8}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 417
    :cond_9
    goto/16 :goto_1

    .line 394
    :cond_a
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    move-object v5, v7

    goto :goto_2

    .line 419
    :cond_b
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    if-eqz v7, :cond_c

    .line 420
    move-object v7, v2

    sget v8, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v3, v7

    .line 426
    :goto_3
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_d

    .line 429
    move-object v7, v3

    new-instance v8, Landroid/support/v7/app/AppCompatDelegateImplV9$2;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV9$2;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    goto/16 :goto_1

    .line 423
    :cond_c
    move-object v7, v2

    sget v8, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v3, v7

    goto :goto_3

    .line 451
    :cond_d
    move-object v7, v3

    check-cast v7, Landroid/support/v7/widget/FitWindowsViewGroup;

    new-instance v8, Landroid/support/v7/app/AppCompatDelegateImplV9$3;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV9$3;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-interface {v7, v8}, Landroid/support/v7/widget/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    goto/16 :goto_1

    .line 472
    :cond_e
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-nez v7, :cond_f

    .line 473
    move-object v7, v0

    move-object v8, v3

    sget v9, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTitleView:Landroid/widget/TextView;

    .line 477
    :cond_f
    move-object v7, v3

    invoke-static {v7}, Landroid/support/v7/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 479
    move-object v7, v3

    sget v8, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/ContentFrameLayout;

    move-object v4, v7

    .line 482
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    const v8, 0x1020002

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v5, v7

    .line 483
    move-object v7, v5

    if-eqz v7, :cond_11

    .line 486
    :goto_4
    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_10

    .line 487
    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 488
    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 489
    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    .line 490
    goto :goto_4

    .line 494
    :cond_10
    move-object v7, v5

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setId(I)V

    .line 495
    move-object v7, v4

    const v8, 0x1020002

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ContentFrameLayout;->setId(I)V

    .line 499
    move-object v7, v5

    instance-of v7, v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_11

    .line 500
    move-object v7, v5

    check-cast v7, Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 505
    :cond_11
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 507
    move-object v7, v4

    new-instance v8, Landroid/support/v7/app/AppCompatDelegateImplV9$4;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV9$4;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ContentFrameLayout;->setAttachListener(Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;)V

    .line 517
    move-object v7, v3

    move-object v0, v7

    return-object v0
.end method

.method private dismissPopups()V
    .locals 5

    .prologue
    .line 1740
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v2, :cond_0

    .line 1741
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v2}, Landroid/support/v7/widget/DecorContentParent;->dismissPopups()V

    .line 1744
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_2

    .line 1745
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    .line 1746
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1748
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1754
    :cond_1
    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 1756
    :cond_2
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V

    .line 1758
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v2

    move-object v1, v2

    .line 1759
    move-object v2, v1

    if-eqz v2, :cond_3

    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    .line 1760
    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->close()V

    .line 1762
    :cond_3
    return-void

    .line 1749
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method private doInvalidatePanelMenu(I)V
    .locals 8

    .prologue
    .line 1612
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v4

    move-object v2, v4

    .line 1613
    const/4 v4, 0x0

    move-object v3, v4

    .line 1614
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v4, :cond_1

    .line 1615
    new-instance v4, Landroid/os/Bundle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v3, v4

    .line 1616
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1617
    move-object v4, v3

    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1618
    move-object v4, v2

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1621
    :cond_0
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1622
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->clear()V

    .line 1624
    :cond_1
    move-object v4, v2

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    .line 1625
    move-object v4, v2

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    .line 1628
    move v4, v1

    const/16 v5, 0x6c

    if-eq v4, v5, :cond_2

    move v4, v1

    if-nez v4, :cond_3

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v4, :cond_3

    .line 1630
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v4

    move-object v2, v4

    .line 1631
    move-object v4, v2

    if-eqz v4, :cond_3

    .line 1632
    move-object v4, v2

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 1633
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    .line 1636
    :cond_3
    return-void
.end method

.method private endOnGoingFadeAnimation()V
    .locals 2

    .prologue
    .line 874
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v1, :cond_0

    .line 875
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 877
    :cond_0
    return-void
.end method

.method private ensureSubDecor()V
    .locals 6

    .prologue
    .line 315
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-nez v3, :cond_2

    .line 316
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->createSubDecor()Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    .line 319
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v1, v3

    .line 320
    move-object v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 321
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 324
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->applyFixedSizeWindow()V

    .line 326
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onSubDecorInstalled(Landroid/view/ViewGroup;)V

    .line 328
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    .line 335
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v3

    move-object v2, v3

    .line 336
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v3, :cond_2

    .line 337
    :cond_1
    move-object v3, v0

    const/16 v4, 0x6c

    invoke-direct {v3, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->invalidatePanelMenu(I)V

    .line 340
    :cond_2
    return-void
.end method

.method private findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .locals 8

    .prologue
    .line 1549
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-object v2, v6

    .line 1550
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v2

    array-length v6, v6

    :goto_0
    move v3, v6

    .line 1551
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 1552
    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 1553
    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v5

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v7, v1

    if-ne v6, v7, :cond_1

    .line 1554
    move-object v6, v5

    move-object v0, v6

    .line 1557
    :goto_2
    return-object v0

    .line 1550
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1551
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1557
    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_2
.end method

.method private initializePanelContent(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
    .locals 9

    .prologue
    .line 1282
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1283
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1284
    const/4 v3, 0x1

    move v0, v3

    .line 1299
    :goto_0
    return v0

    .line 1287
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v3, :cond_1

    .line 1288
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 1291
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    if-nez v3, :cond_2

    .line 1292
    move-object v3, v0

    new-instance v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/app/AppCompatDelegateImplV9$1;)V

    iput-object v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    .line 1295
    :cond_2
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->getListMenuView(Landroid/support/v7/view/menu/MenuPresenter$Callback;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v3

    move-object v2, v3

    .line 1297
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    iput-object v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1299
    move-object v3, v1

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private initializePanelDecor(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
    .locals 8

    .prologue
    .line 1188
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1189
    move-object v2, v1

    new-instance v3, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/content/Context;)V

    iput-object v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    .line 1190
    move-object v2, v1

    const/16 v3, 0x51

    iput v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->gravity:I

    .line 1191
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method private initializePanelMenu(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
    .locals 11

    .prologue
    .line 1239
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    move-object v2, v6

    .line 1242
    move-object v6, v1

    iget v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_0

    move-object v6, v1

    iget v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    const/16 v7, 0x6c

    if-ne v6, v7, :cond_3

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v6, :cond_3

    .line 1244
    new-instance v6, Landroid/util/TypedValue;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    move-object v3, v6

    .line 1245
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move-object v4, v6

    .line 1246
    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    move-object v8, v3

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    .line 1248
    const/4 v6, 0x0

    move-object v5, v6

    .line 1249
    move-object v6, v3

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_4

    .line 1250
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move-object v5, v6

    .line 1251
    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1252
    move-object v6, v5

    move-object v7, v3

    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1253
    move-object v6, v5

    sget v7, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    move-object v8, v3

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    .line 1260
    :goto_0
    move-object v6, v3

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_2

    .line 1261
    move-object v6, v5

    if-nez v6, :cond_1

    .line 1262
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move-object v5, v6

    .line 1263
    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1265
    :cond_1
    move-object v6, v5

    move-object v7, v3

    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1268
    :cond_2
    move-object v6, v5

    if-eqz v6, :cond_3

    .line 1269
    new-instance v6, Landroid/support/v7/view/ContextThemeWrapper;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v2, v6

    .line 1270
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1274
    :cond_3
    new-instance v6, Landroid/support/v7/view/menu/MenuBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    invoke-direct {v7, v8}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    move-object v3, v6

    .line 1275
    move-object v6, v3

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 1276
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->setMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1278
    const/4 v6, 0x1

    move v0, v6

    return v0

    .line 1256
    :cond_4
    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    move-object v8, v3

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    goto :goto_0
.end method

.method private invalidatePanelMenu(I)V
    .locals 7

    .prologue
    .line 1603
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    .line 1605
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    if-nez v2, :cond_0

    .line 1606
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1607
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    .line 1609
    :cond_0
    return-void
.end method

.method private onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    .line 1457
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 1458
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v4

    move-object v3, v4

    .line 1459
    move-object v4, v3

    iget-boolean v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_0

    .line 1460
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    .line 1464
    :goto_0
    return v0

    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method private onKeyUpPanel(ILandroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    .line 1468
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v6, :cond_0

    .line 1469
    const/4 v6, 0x0

    move v0, v6

    .line 1517
    :goto_0
    return v0

    .line 1472
    :cond_0
    const/4 v6, 0x0

    move v3, v6

    .line 1473
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v6

    move-object v4, v6

    .line 1474
    move v6, v1

    if-nez v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 1475
    invoke-interface {v6}, Landroid/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .line 1476
    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1477
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v6}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1478
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v0

    move-object v7, v4

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1479
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v6}, Landroid/support/v7/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v6

    move v3, v6

    .line 1508
    :cond_1
    :goto_1
    move v6, v3

    if-eqz v6, :cond_2

    .line 1509
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    move-object v5, v6

    .line 1511
    move-object v6, v5

    if-eqz v6, :cond_8

    .line 1512
    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1517
    :cond_2
    :goto_2
    move v6, v3

    move v0, v6

    goto :goto_0

    .line 1482
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v6}, Landroid/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v6

    move v3, v6

    goto :goto_1

    .line 1485
    :cond_4
    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v6, :cond_5

    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    if-eqz v6, :cond_6

    .line 1488
    :cond_5
    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    move v3, v6

    .line 1490
    move-object v6, v0

    move-object v7, v4

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_1

    .line 1491
    :cond_6
    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    if-eqz v6, :cond_1

    .line 1492
    const/4 v6, 0x1

    move v5, v6

    .line 1493
    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v6, :cond_7

    .line 1496
    move-object v6, v4

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 1497
    move-object v6, v0

    move-object v7, v4

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v6

    move v5, v6

    .line 1500
    :cond_7
    move v6, v5

    if-eqz v6, :cond_1

    .line 1502
    move-object v6, v0

    move-object v7, v4

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->openPanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1503
    const/4 v6, 0x1

    move v3, v6

    goto :goto_1

    .line 1514
    :cond_8
    const-string v6, "AppCompatDelegate"

    const-string v7, "Couldn\'t get audio manager"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_2
.end method

.method private openPanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 19

    .prologue
    .line 1089
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v9, :cond_0

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1185
    :cond_0
    :goto_0
    return-void

    .line 1095
    :cond_1
    move-object v9, v1

    iget v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    if-nez v9, :cond_4

    .line 1096
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    move-object v3, v9

    .line 1097
    move-object v9, v3

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    move-object v4, v9

    .line 1098
    move-object v9, v4

    iget v9, v9, Landroid/content/res/Configuration;->screenLayout:I

    const/16 v10, 0xf

    and-int/lit8 v9, v9, 0xf

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    :goto_1
    move v5, v9

    .line 1100
    move-object v9, v3

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_3

    const/4 v9, 0x1

    :goto_2
    move v6, v9

    .line 1103
    move v9, v5

    if-eqz v9, :cond_4

    move v9, v6

    if-eqz v9, :cond_4

    .line 1104
    goto :goto_0

    .line 1098
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 1100
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 1108
    :cond_4
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v9

    move-object v3, v9

    .line 1109
    move-object v9, v3

    if-eqz v9, :cond_5

    move-object v9, v3

    move-object v10, v1

    iget v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    move-object v11, v1

    iget-object v11, v11, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v9, v10, v11}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1111
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1112
    goto :goto_0

    .line 1115
    :cond_5
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    move-object v4, v9

    .line 1116
    move-object v9, v4

    if-nez v9, :cond_6

    .line 1117
    goto :goto_0

    .line 1121
    :cond_6
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1122
    goto :goto_0

    .line 1125
    :cond_7
    const/4 v9, -0x2

    move v5, v9

    .line 1126
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v9, :cond_8

    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    if-eqz v9, :cond_11

    .line 1127
    :cond_8
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-nez v9, :cond_a

    .line 1129
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV9;->initializePanelDecor(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-nez v9, :cond_b

    .line 1130
    :cond_9
    goto/16 :goto_0

    .line 1131
    :cond_a
    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    if-eqz v9, :cond_b

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lez v9, :cond_b

    .line 1133
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1137
    :cond_b
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV9;->initializePanelContent(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z

    move-result v9

    if-eqz v9, :cond_c

    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->hasPanelItems()Z

    move-result v9

    if-nez v9, :cond_d

    .line 1138
    :cond_c
    goto/16 :goto_0

    .line 1141
    :cond_d
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move-object v6, v9

    .line 1142
    move-object v9, v6

    if-nez v9, :cond_e

    .line 1143
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v6, v9

    .line 1146
    :cond_e
    move-object v9, v1

    iget v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->background:I

    move v7, v9

    .line 1147
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1149
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    move-object v8, v9

    .line 1150
    move-object v9, v8

    if-eqz v9, :cond_f

    move-object v9, v8

    instance-of v9, v9, Landroid/view/ViewGroup;

    if-eqz v9, :cond_f

    .line 1151
    move-object v9, v8

    check-cast v9, Landroid/view/ViewGroup;

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1153
    :cond_f
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1159
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->hasFocus()Z

    move-result v9

    if-nez v9, :cond_10

    .line 1160
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    move-result v9

    .line 1171
    :cond_10
    :goto_3
    move-object v9, v1

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    .line 1173
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move v11, v5

    const/4 v12, -0x2

    move-object v13, v1

    iget v13, v13, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->x:I

    move-object v14, v1

    iget v14, v14, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->y:I

    const/16 v15, 0x3ea

    const/high16 v16, 0x820000

    const/16 v17, -0x3

    invoke-direct/range {v10 .. v17}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    move-object v6, v9

    .line 1180
    move-object v9, v6

    move-object v10, v1

    iget v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->gravity:I

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1181
    move-object v9, v6

    move-object v10, v1

    iget v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->windowAnimations:I

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1183
    move-object v9, v4

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    move-object v11, v6

    invoke-interface {v9, v10, v11}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1184
    move-object v9, v1

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    .line 1185
    goto/16 :goto_0

    .line 1162
    :cond_11
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v9, :cond_10

    .line 1165
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move-object v6, v9

    .line 1166
    move-object v9, v6

    if-eqz v9, :cond_10

    move-object v9, v6

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_10

    .line 1167
    const/4 v9, -0x1

    move v5, v9

    goto :goto_3
.end method

.method private performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 10

    .prologue
    .line 1579
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1580
    const/4 v6, 0x0

    move v0, v6

    .line 1599
    :goto_0
    return v0

    .line 1583
    :cond_0
    const/4 v6, 0x0

    move v5, v6

    .line 1587
    move-object v6, v1

    iget-boolean v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    if-nez v6, :cond_1

    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v6, :cond_2

    .line 1589
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move v7, v2

    move-object v8, v3

    move v9, v4

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v7/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v6

    move v5, v6

    .line 1592
    :cond_2
    move v6, v5

    if-eqz v6, :cond_3

    .line 1594
    move v6, v4

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-nez v6, :cond_3

    .line 1595
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1599
    :cond_3
    move v6, v5

    move v0, v6

    goto :goto_0
.end method

.method private preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 12

    .prologue
    .line 1303
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1304
    const/4 v6, 0x0

    move v0, v6

    .line 1403
    :goto_0
    return v0

    .line 1308
    :cond_0
    move-object v6, v1

    iget-boolean v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    if-eqz v6, :cond_1

    .line 1309
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 1312
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-object v7, v1

    if-eq v6, v7, :cond_2

    .line 1314
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1317
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v6

    move-object v3, v6

    .line 1319
    move-object v6, v3

    if-eqz v6, :cond_3

    .line 1320
    move-object v6, v1

    move-object v7, v3

    move-object v8, v1

    iget v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    invoke-interface {v7, v8}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 1323
    :cond_3
    move-object v6, v1

    iget v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_4

    move-object v6, v1

    iget v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    const/16 v7, 0x6c

    if-ne v6, v7, :cond_9

    :cond_4
    const/4 v6, 0x1

    :goto_1
    move v4, v6

    .line 1326
    move v6, v4

    if-eqz v6, :cond_5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v6, :cond_5

    .line 1329
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v6}, Landroid/support/v7/widget/DecorContentParent;->setMenuPrepared()V

    .line 1332
    :cond_5
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v6, :cond_13

    move v6, v4

    if-eqz v6, :cond_6

    move-object v6, v0

    .line 1333
    invoke-virtual {v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v6

    instance-of v6, v6, Landroid/support/v7/app/ToolbarActionBar;

    if-nez v6, :cond_13

    .line 1336
    :cond_6
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v6, :cond_7

    move-object v6, v1

    iget-boolean v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v6, :cond_f

    .line 1337
    :cond_7
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v6, :cond_a

    .line 1338
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9;->initializePanelMenu(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v6, :cond_a

    .line 1339
    :cond_8
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 1323
    :cond_9
    const/4 v6, 0x0

    goto :goto_1

    .line 1343
    :cond_a
    move v6, v4

    if-eqz v6, :cond_c

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v6, :cond_c

    .line 1344
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    if-nez v6, :cond_b

    .line 1345
    move-object v6, v0

    new-instance v7, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/app/AppCompatDelegateImplV9$1;)V

    iput-object v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    .line 1347
    :cond_b
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    move-object v7, v1

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-interface {v6, v7, v8}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1352
    :cond_c
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1353
    move-object v6, v3

    move-object v7, v1

    iget v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    move-object v8, v1

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v6, v7, v8}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 1355
    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->setMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1357
    move v6, v4

    if-eqz v6, :cond_d

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v6, :cond_d

    .line 1359
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-interface {v6, v7, v8}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1362
    :cond_d
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 1365
    :cond_e
    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    .line 1370
    :cond_f
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1374
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v6, :cond_10

    .line 1375
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v7, v1

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1376
    move-object v6, v1

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1380
    :cond_10
    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v1

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v6, v7, v8, v9}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 1381
    move v6, v4

    if-eqz v6, :cond_11

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v6, :cond_11

    .line 1384
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-interface {v6, v7, v8}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1386
    :cond_11
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1387
    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 1391
    :cond_12
    move-object v6, v2

    if-eqz v6, :cond_14

    move-object v6, v2

    .line 1392
    invoke-virtual {v6}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    .line 1391
    :goto_2
    invoke-static {v6}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v6

    move-object v5, v6

    .line 1393
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_15

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->qwertyMode:Z

    .line 1394
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v7, v1

    iget-boolean v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 1395
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1399
    :cond_13
    move-object v6, v1

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 1400
    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    .line 1401
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .line 1403
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 1392
    :cond_14
    const/4 v6, -0x1

    goto :goto_2

    .line 1393
    :cond_15
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private reopenMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 9

    .prologue
    .line 1195
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v5, :cond_5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .line 1196
    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 1197
    invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1199
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v5

    move-object v3, v5

    .line 1201
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    if-nez v5, :cond_4

    .line 1202
    :cond_1
    move-object v5, v3

    if-eqz v5, :cond_3

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1204
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    if-eqz v5, :cond_2

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 1206
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v5

    .line 1207
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1210
    :cond_2
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v5

    move-object v4, v5

    .line 1214
    move-object v5, v4

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v5, :cond_3

    move-object v5, v4

    iget-boolean v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    if-nez v5, :cond_3

    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 1215
    invoke-interface {v5, v6, v7, v8}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1216
    move-object v5, v3

    const/16 v6, 0x6c

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v5, v6, v7}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v5

    .line 1217
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v5

    .line 1236
    :cond_3
    :goto_0
    return-void

    .line 1221
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v5

    .line 1222
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1223
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v5

    move-object v4, v5

    .line 1224
    move-object v5, v3

    const/16 v6, 0x6c

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v5, v6, v7}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1230
    :cond_5
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v5

    move-object v3, v5

    .line 1232
    move-object v5, v3

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    .line 1233
    move-object v5, v0

    move-object v6, v3

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1235
    move-object v5, v0

    move-object v6, v3

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9;->openPanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1236
    goto :goto_0
.end method

.method private sanitizeWindowFeatureId(I)I
    .locals 4

    .prologue
    .line 1722
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 1723
    const-string v2, "AppCompatDelegate"

    const-string v3, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1725
    const/16 v2, 0x6c

    move v0, v2

    .line 1732
    :goto_0
    return v0

    .line 1726
    :cond_0
    move v2, v1

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 1727
    const-string v2, "AppCompatDelegate"

    const-string v3, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1729
    const/16 v2, 0x6d

    move v0, v2

    goto :goto_0

    .line 1732
    :cond_1
    move v2, v1

    move v0, v2

    goto :goto_0
.end method

.method private shouldInheritContext(Landroid/view/ViewParent;)Z
    .locals 5

    .prologue
    .line 1021
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    .line 1023
    const/4 v3, 0x0

    move v0, v3

    .line 1039
    :goto_0
    return v0

    .line 1025
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 1027
    :goto_1
    move-object v3, v1

    if-nez v3, :cond_1

    .line 1032
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 1033
    :cond_1
    move-object v3, v1

    move-object v4, v2

    if-eq v3, v4, :cond_2

    move-object v3, v1

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    .line 1034
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1039
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 1041
    :cond_3
    move-object v3, v1

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v1, v3

    goto :goto_1
.end method

.method private throwFeatureRequestIfSubDecorInstalled()V
    .locals 5

    .prologue
    .line 1715
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-eqz v1, :cond_0

    .line 1716
    new-instance v1, Landroid/util/AndroidRuntimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Window feature must be requested before adding content"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1719
    :cond_0
    return-void
.end method

.method private updateStatusGuard(I)I
    .locals 17

    .prologue
    .line 1645
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v9, 0x0

    move v2, v9

    .line 1647
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v9, :cond_3

    .line 1648
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v9}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_3

    .line 1649
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    .line 1650
    invoke-virtual {v9}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v3, v9

    .line 1651
    const/4 v9, 0x0

    move v4, v9

    .line 1653
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v9}, Landroid/support/v7/widget/ActionBarContextView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1654
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect1:Landroid/graphics/Rect;

    if-nez v9, :cond_0

    .line 1655
    move-object v9, v0

    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect1:Landroid/graphics/Rect;

    .line 1656
    move-object v9, v0

    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect2:Landroid/graphics/Rect;

    .line 1658
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect1:Landroid/graphics/Rect;

    move-object v5, v9

    .line 1659
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v9

    .line 1660
    move-object v9, v5

    const/4 v10, 0x0

    move v11, v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1662
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    move-object v10, v5

    move-object v11, v6

    invoke-static {v9, v10, v11}, Landroid/support/v7/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1663
    move-object v9, v6

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-nez v9, :cond_5

    move v9, v1

    :goto_0
    move v7, v9

    .line 1664
    move-object v9, v3

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v10, v7

    if-eq v9, v10, :cond_1

    .line 1665
    const/4 v9, 0x1

    move v4, v9

    .line 1666
    move-object v9, v3

    move v10, v1

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1668
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-nez v9, :cond_6

    .line 1669
    move-object v9, v0

    new-instance v10, Landroid/view/View;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v10, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    .line 1670
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Landroid/support/v7/appcompat/R$color;->abc_input_method_navigation_guard:I

    .line 1671
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 1670
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1672
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    const/4 v11, -0x1

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, -0x1

    move v15, v1

    invoke-direct {v13, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1686
    :cond_1
    :goto_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    :goto_2
    move v2, v9

    .line 1692
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    if-nez v9, :cond_2

    move v9, v2

    if-eqz v9, :cond_2

    .line 1693
    const/4 v9, 0x0

    move v1, v9

    .line 1702
    :cond_2
    :goto_3
    move v9, v4

    if-eqz v9, :cond_3

    .line 1703
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1707
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-eqz v9, :cond_4

    .line 1708
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    move v10, v2

    if-eqz v10, :cond_9

    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1711
    :cond_4
    move v9, v1

    move v0, v9

    return v0

    .line 1663
    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    .line 1676
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move-object v8, v9

    .line 1677
    move-object v9, v8

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v10, v1

    if-eq v9, v10, :cond_1

    .line 1678
    move-object v9, v8

    move v10, v1

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1679
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1686
    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 1697
    :cond_8
    move-object v9, v3

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v9, :cond_2

    .line 1698
    const/4 v9, 0x1

    move v4, v9

    .line 1699
    move-object v9, v3

    const/4 v10, 0x0

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 1708
    :cond_9
    const/16 v10, 0x8

    goto :goto_4
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 7

    .prologue
    .line 299
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 300
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v3, v4

    .line 301
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v4}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 303
    return-void
.end method

.method callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .prologue
    .line 1077
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v6, v6, Landroid/view/LayoutInflater$Factory;

    if-eqz v6, :cond_0

    .line 1078
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v6, Landroid/view/LayoutInflater$Factory;

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    .line 1079
    invoke-interface {v6, v7, v8, v9}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 1080
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 1081
    move-object v6, v5

    move-object v0, v6

    .line 1084
    :goto_0
    return-object v0

    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 17
    .param p3    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1004
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_1

    const/4 v7, 0x1

    :goto_0
    move v5, v7

    .line 1006
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    if-nez v7, :cond_0

    .line 1007
    move-object v7, v0

    new-instance v8, Landroid/support/v7/app/AppCompatViewInflater;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v8, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    .line 1011
    :cond_0
    move v7, v5

    if-eqz v7, :cond_2

    move-object v7, v0

    move-object v8, v1

    check-cast v8, Landroid/view/ViewParent;

    invoke-direct {v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->shouldInheritContext(Landroid/view/ViewParent;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    move v6, v7

    .line 1013
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move v12, v6

    move v13, v5

    const/4 v14, 0x1

    .line 1016
    invoke-static {}, Landroid/support/v7/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v15

    .line 1013
    invoke-virtual/range {v7 .. v15}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object v7

    move-object v0, v7

    return-object v0

    .line 1004
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1011
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    .line 935
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x52

    if-ne v5, v6, :cond_0

    .line 937
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    move-object v6, v1

    invoke-interface {v5, v6}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 938
    const/4 v5, 0x1

    move v0, v5

    .line 946
    :goto_0
    return v0

    .line 942
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    move v2, v5

    .line 943
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    move v3, v5

    .line 944
    move v5, v3

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v4, v5

    .line 946
    move v5, v4

    if-eqz v5, :cond_2

    move-object v5, v0

    move v6, v2

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_2
    move v0, v5

    goto :goto_0

    .line 944
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 946
    :cond_2
    move-object v5, v0

    move v6, v2

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_2
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 231
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .locals 11

    .prologue
    .line 1562
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v3, v6

    if-eqz v5, :cond_0

    move-object v5, v3

    array-length v5, v5

    move v6, v1

    if-gt v5, v6, :cond_2

    .line 1563
    :cond_0
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-object v4, v5

    .line 1564
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 1565
    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v3

    array-length v9, v9

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1567
    :cond_1
    move-object v5, v0

    move-object v6, v4

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v3, v7

    iput-object v6, v5, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .line 1570
    :cond_2
    move-object v5, v3

    move v6, v1

    aget-object v5, v5, v6

    move-object v4, v5

    .line 1571
    move-object v5, v4

    if-nez v5, :cond_3

    .line 1572
    move-object v5, v3

    move v6, v1

    new-instance v7, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move v9, v1

    invoke-direct {v8, v9}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;-><init>(I)V

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v4, v8

    aput-object v7, v5, v6

    .line 1574
    :cond_3
    move-object v5, v4

    move-object v0, v5

    return-object v0
.end method

.method getSubDecor()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 1736
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    move-object v0, v1

    return-object v0
.end method

.method public hasWindowFeature(I)Z
    .locals 4

    .prologue
    .line 603
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->sanitizeWindowFeatureId(I)I

    move-result v2

    move v1, v2

    .line 604
    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 618
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    move v0, v2

    :goto_0
    return v0

    .line 606
    :sswitch_0
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    move v0, v2

    goto :goto_0

    .line 608
    :sswitch_1
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    move v0, v2

    goto :goto_0

    .line 610
    :sswitch_2
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    move v0, v2

    goto :goto_0

    .line 612
    :sswitch_3
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureProgress:Z

    move v0, v2

    goto :goto_0

    .line 614
    :sswitch_4
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureIndeterminateProgress:Z

    move v0, v2

    goto :goto_0

    .line 616
    :sswitch_5
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    move v0, v2

    goto :goto_0

    .line 604
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method public initWindowDecorActionBar()V
    .locals 7

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 175
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 180
    move-object v1, v0

    new-instance v2, Landroid/support/v7/app/WindowDecorActionBar;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v4, Landroid/app/Activity;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    invoke-direct {v3, v4, v5}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;Z)V

    iput-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 185
    :cond_2
    :goto_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_3

    .line 186
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 188
    :cond_3
    goto :goto_0

    .line 182
    :cond_4
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Dialog;

    if-eqz v1, :cond_2

    .line 183
    move-object v1, v0

    new-instance v2, Landroid/support/v7/app/WindowDecorActionBar;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v4, Landroid/app/Dialog;

    invoke-direct {v3, v4}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    goto :goto_1
.end method

.method public installViewFactory()V
    .locals 4

    .prologue
    .line 1047
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    move-object v1, v2

    .line 1048
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1049
    move-object v2, v1

    move-object v3, v0

    invoke-static {v2, v3}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/LayoutInflaterCompat;->getFactory(Landroid/view/LayoutInflater;)Landroid/support/v4/view/LayoutInflaterFactory;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;

    if-nez v2, :cond_0

    .line 1053
    const-string v2, "AppCompatDelegate"

    const-string v3, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 4

    .prologue
    .line 708
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    move-object v1, v2

    .line 709
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 712
    :goto_0
    return-void

    .line 711
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->invalidatePanelMenu(I)V

    .line 712
    goto :goto_0
.end method

.method onBackPressed()Z
    .locals 3

    .prologue
    .line 881
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v2, :cond_0

    .line 882
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v2}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 883
    const/4 v2, 0x1

    move v0, v2

    .line 893
    :goto_0
    return v0

    .line 887
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    move-object v1, v2

    .line 888
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBar;->collapseActionView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 889
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 893
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-eqz v3, :cond_0

    .line 241
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    move-object v2, v3

    .line 242
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 243
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 248
    :cond_0
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->onConfigurationChanged(Landroid/content/Context;)V

    .line 251
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->applyDayNight()Z

    move-result v3

    .line 252
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 153
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 155
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    move-object v2, v3

    .line 156
    move-object v3, v2

    if-nez v3, :cond_1

    .line 157
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mEnableDefaultActionBarUp:Z

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11

    .prologue
    .line 1066
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV9;->callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 1067
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 1068
    move-object v6, v5

    move-object v0, v6

    .line 1072
    :goto_0
    return-object v0

    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV9;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 307
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/app/AppCompatDelegateImplBase;->onDestroy()V

    .line 309
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_0

    .line 310
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->onDestroy()V

    .line 312
    :cond_0
    return-void
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 977
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 993
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 996
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 998
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    :goto_1
    return v0

    .line 979
    :sswitch_0
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 983
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 987
    :sswitch_1
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    const/16 v5, 0x80

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mLongPressBackDown:Z

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 977
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 11

    .prologue
    .line 899
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v6

    move-object v3, v6

    .line 900
    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    move v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 901
    const/4 v6, 0x1

    move v0, v6

    .line 930
    :goto_0
    return v0

    .line 906
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v6, :cond_2

    .line 907
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    move-object v9, v2

    const/4 v10, 0x1

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV9;->performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v6

    move v4, v6

    .line 909
    move v6, v4

    if-eqz v6, :cond_2

    .line 910
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v6, :cond_1

    .line 911
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    .line 913
    :cond_1
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 921
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-nez v6, :cond_3

    .line 922
    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v6

    move-object v5, v6

    .line 923
    move-object v6, v0

    move-object v7, v5

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v6

    .line 924
    move-object v6, v0

    move-object v7, v5

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    move-object v9, v2

    const/4 v10, 0x1

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV9;->performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v6

    move v4, v6

    .line 925
    move-object v6, v5

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 926
    move v6, v4

    if-eqz v6, :cond_3

    .line 927
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 930
    :cond_3
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    .line 950
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v1

    sparse-switch v5, :sswitch_data_0

    .line 973
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    :goto_0
    return v0

    .line 952
    :sswitch_0
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyUpPanel(ILandroid/view/KeyEvent;)Z

    move-result v5

    .line 953
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 955
    :sswitch_1
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9;->mLongPressBackDown:Z

    move v3, v5

    .line 956
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v7/app/AppCompatDelegateImplV9;->mLongPressBackDown:Z

    .line 958
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v5

    move-object v4, v5

    .line 959
    move-object v5, v4

    if-eqz v5, :cond_2

    move-object v5, v4

    iget-boolean v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-eqz v5, :cond_2

    .line 960
    move v5, v3

    if-nez v5, :cond_1

    .line 964
    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 966
    :cond_1
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 968
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onBackPressed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 969
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 950
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    .line 663
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v5

    move-object v3, v5

    .line 664
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 665
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v5

    move-object v4, v5

    .line 666
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 667
    move-object v5, v3

    move-object v6, v4

    iget v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v5

    move v0, v5

    .line 670
    :goto_0
    return v0

    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 5

    .prologue
    .line 675
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->reopenMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 676
    return-void
.end method

.method onMenuOpened(ILandroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 651
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    const/16 v5, 0x6c

    if-ne v4, v5, :cond_1

    .line 652
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    move-object v3, v4

    .line 653
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 654
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 656
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    .line 658
    :goto_0
    return v0

    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method onPanelClosed(ILandroid/view/Menu;)V
    .locals 7

    .prologue
    .line 634
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    const/16 v5, 0x6c

    if-ne v4, v5, :cond_1

    .line 635
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    move-object v3, v4

    .line 636
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 637
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    move v4, v1

    if-nez v4, :cond_0

    .line 642
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v4

    move-object v3, v4

    .line 643
    move-object v4, v3

    iget-boolean v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-eqz v4, :cond_0

    .line 644
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 169
    return-void
.end method

.method public onPostResume()V
    .locals 4

    .prologue
    .line 264
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    move-object v1, v2

    .line 265
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 266
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 268
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 256
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    move-object v1, v2

    .line 257
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 258
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 260
    :cond_0
    return-void
.end method

.method onSubDecorInstalled(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 520
    return-void
.end method

.method onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 623
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v2, :cond_1

    .line 624
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 626
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 627
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 628
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTitleView:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public requestWindowFeature(I)Z
    .locals 4

    .prologue
    .line 561
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->sanitizeWindowFeatureId(I)I

    move-result v2

    move v1, v2

    .line 563
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    if-eqz v2, :cond_0

    move v2, v1

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_0

    .line 564
    const/4 v2, 0x0

    move v0, v2

    .line 598
    :goto_0
    return v0

    .line 566
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v2, :cond_1

    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 568
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    .line 571
    :cond_1
    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 598
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 573
    :sswitch_0
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 574
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    .line 575
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 577
    :sswitch_1
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 578
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    .line 579
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 581
    :sswitch_2
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 582
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    .line 583
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 585
    :sswitch_3
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 586
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureProgress:Z

    .line 587
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 589
    :sswitch_4
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 590
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureIndeterminateProgress:Z

    .line 591
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 593
    :sswitch_5
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 594
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    .line 595
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 571
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method public setContentView(I)V
    .locals 6

    .prologue
    .line 281
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 282
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v2, v3

    .line 283
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 284
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 285
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v3}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 286
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 272
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 273
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v2, v3

    .line 274
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 275
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 276
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v3}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 277
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 7

    .prologue
    .line 290
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 291
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v3, v4

    .line 292
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 293
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v4}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 295
    return-void
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 10

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v4, v4, Landroid/app/Activity;

    if-nez v4, :cond_0

    .line 225
    :goto_0
    return-void

    .line 197
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    move-object v2, v4

    .line 198
    move-object v4, v2

    instance-of v4, v4, Landroid/support/v7/app/WindowDecorActionBar;

    if-eqz v4, :cond_1

    .line 199
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 206
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mMenuInflater:Landroid/view/MenuInflater;

    .line 209
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 210
    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBar;->onDestroy()V

    .line 213
    :cond_2
    move-object v4, v1

    if-eqz v4, :cond_3

    .line 214
    new-instance v4, Landroid/support/v7/app/ToolbarActionBar;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    .line 215
    invoke-virtual {v7}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/app/ToolbarActionBar;-><init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    move-object v3, v4

    .line 216
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 217
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    move-object v5, v3

    invoke-virtual {v5}, Landroid/support/v7/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 224
    :goto_1
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->invalidateOptionsMenu()V

    .line 225
    goto :goto_0

    .line 219
    :cond_3
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 221
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v4, v5}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_1
.end method

.method final shouldAnimateActionModeView()Z
    .locals 2

    .prologue
    .line 870
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

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

.method public startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 9
    .param p1    # Landroid/support/v7/view/ActionMode$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 680
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    .line 681
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "ActionMode callback can not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 684
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v4, :cond_1

    .line 685
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v4}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 688
    :cond_1
    new-instance v4, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/view/ActionMode$Callback;)V

    move-object v2, v4

    .line 690
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    move-object v3, v4

    .line 691
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 692
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar;->startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 693
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v4, :cond_2

    .line 694
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-interface {v4, v5}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 698
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-nez v4, :cond_3

    .line 700
    move-object v4, v0

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 703
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    move-object v0, v4

    return-object v0
.end method

.method startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 14
    .param p1    # Landroid/support/v7/view/ActionMode$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 716
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/app/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V

    .line 717
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v7, :cond_0

    .line 718
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v7}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 721
    :cond_0
    move-object v7, v1

    instance-of v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    if-nez v7, :cond_1

    .line 723
    new-instance v7, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/view/ActionMode$Callback;)V

    move-object v1, v7

    .line 726
    :cond_1
    const/4 v7, 0x0

    move-object v2, v7

    .line 727
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v7, :cond_2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v7

    if-nez v7, :cond_2

    .line 729
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    move-object v8, v1

    invoke-interface {v7, v8}, Landroid/support/v7/app/AppCompatCallback;->onWindowStartingSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v2, v7

    .line 735
    :cond_2
    :goto_0
    move-object v7, v2

    if-eqz v7, :cond_5

    .line 736
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 861
    :cond_3
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v7, :cond_4

    .line 862
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-interface {v7, v8}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 864
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    move-object v0, v7

    return-object v0

    .line 730
    :catch_0
    move-exception v7

    move-object v3, v7

    goto :goto_0

    .line 738
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    if-nez v7, :cond_6

    .line 739
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mIsFloating:Z

    if-eqz v7, :cond_9

    .line 741
    new-instance v7, Landroid/util/TypedValue;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    move-object v3, v7

    .line 742
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    move-object v4, v7

    .line 743
    move-object v7, v4

    sget v8, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    move-object v9, v3

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v7

    .line 746
    move-object v7, v3

    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_8

    .line 747
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    move-object v6, v7

    .line 748
    move-object v7, v6

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 749
    move-object v7, v6

    move-object v8, v3

    iget v8, v8, Landroid/util/TypedValue;->resourceId:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 751
    new-instance v7, Landroid/support/v7/view/ContextThemeWrapper;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v5, v7

    .line 752
    move-object v7, v5

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 757
    :goto_2
    move-object v7, v0

    new-instance v8, Landroid/support/v7/widget/ActionBarContextView;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v5

    invoke-direct {v9, v10}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    .line 758
    move-object v7, v0

    new-instance v8, Landroid/widget/PopupWindow;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v5

    const/4 v11, 0x0

    sget v12, Landroid/support/v7/appcompat/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 760
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/support/v4/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 762
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 763
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 765
    move-object v7, v5

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget v8, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I

    move-object v9, v3

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v7

    .line 767
    move-object v7, v3

    iget v7, v7, Landroid/util/TypedValue;->data:I

    move-object v8, v5

    .line 768
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 767
    invoke-static {v7, v8}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v7

    move v6, v7

    .line 769
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    move v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ActionBarContextView;->setContentHeight(I)V

    .line 770
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 771
    move-object v7, v0

    new-instance v8, Landroid/support/v7/app/AppCompatDelegateImplV9$5;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV9$5;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    iput-object v8, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mShowActionModePopup:Ljava/lang/Runnable;

    .line 812
    :cond_6
    :goto_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v7, :cond_3

    .line 813
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/app/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V

    .line 814
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v7}, Landroid/support/v7/widget/ActionBarContextView;->killMode()V

    .line 815
    new-instance v7, Landroid/support/v7/view/StandaloneActionMode;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v9}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v12, :cond_a

    const/4 v12, 0x1

    :goto_4
    invoke-direct {v8, v9, v10, v11, v12}, Landroid/support/v7/view/StandaloneActionMode;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode$Callback;Z)V

    move-object v2, v7

    .line 817
    move-object v7, v1

    move-object v8, v2

    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 818
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v7/view/ActionMode;->invalidate()V

    .line 819
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ActionBarContextView;->initForMode(Landroid/support/v7/view/ActionMode;)V

    .line 820
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 822
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/app/AppCompatDelegateImplV9;->shouldAnimateActionModeView()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 823
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 824
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    iput-object v8, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 825
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v8, Landroid/support/v7/app/AppCompatDelegateImplV9$6;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/support/v7/app/AppCompatDelegateImplV9$6;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    .line 853
    :cond_7
    :goto_5
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v7, :cond_3

    .line 854
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatDelegateImplV9;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v7

    goto/16 :goto_1

    .line 754
    :cond_8
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    move-object v5, v7

    goto/16 :goto_2

    .line 802
    :cond_9
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    sget v8, Landroid/support/v7/appcompat/R$id;->action_mode_bar_stub:I

    .line 803
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/ViewStubCompat;

    move-object v3, v7

    .line 804
    move-object v7, v3

    if-eqz v7, :cond_6

    .line 806
    move-object v7, v3

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 807
    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v8}, Landroid/support/v7/widget/ViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v8, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    goto/16 :goto_3

    .line 815
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 844
    :cond_b
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 845
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 846
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 848
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v7}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 849
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v7}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_5

    .line 857
    :cond_c
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    goto/16 :goto_1
.end method
