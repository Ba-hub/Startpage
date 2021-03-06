.class public Landroid/support/v7/view/StandaloneActionMode;
.super Landroid/support/v7/view/ActionMode;
.source "StandaloneActionMode.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# instance fields
.field private mCallback:Landroid/support/v7/view/ActionMode$Callback;

.field private mContext:Landroid/content/Context;

.field private mContextView:Landroid/support/v7/widget/ActionBarContextView;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFinished:Z

.field private mFocusable:Z

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode$Callback;Z)V
    .locals 10

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/view/ActionMode;-><init>()V

    .line 47
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v7/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    .line 48
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    .line 49
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v7/view/StandaloneActionMode;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    .line 51
    move-object v5, v0

    new-instance v6, Landroid/support/v7/view/menu/MenuBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v6

    iput-object v6, v5, Landroid/support/v7/view/StandaloneActionMode;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 53
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/StandaloneActionMode;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 54
    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Landroid/support/v7/view/StandaloneActionMode;->mFocusable:Z

    .line 55
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/view/StandaloneActionMode;->mFinished:Z

    if-eqz v1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 104
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/view/StandaloneActionMode;->mFinished:Z

    .line 106
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 107
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/StandaloneActionMode;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v7/view/ActionMode$Callback;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V

    .line 108
    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

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
    .line 112
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/StandaloneActionMode;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v0, v1

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 5

    .prologue
    .line 132
    move-object v0, p0

    new-instance v1, Landroid/support/v7/view/SupportMenuInflater;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public invalidate()V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/StandaloneActionMode;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/StandaloneActionMode;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v1, v2, v3}, Landroid/support/v7/view/ActionMode$Callback;->onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    .line 97
    return-void
.end method

.method public isTitleOptional()Z
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isUiFocusable()Z
    .locals 2

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/view/StandaloneActionMode;->mFocusable:Z

    move v0, v1

    return v0
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public onCloseSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/StandaloneActionMode;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    move-object v4, v0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v7/view/ActionMode$Callback;->onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 3

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/view/StandaloneActionMode;->invalidate()V

    .line 156
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContextView;->showOverflowMenu()Z

    move-result v2

    .line 157
    return-void
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 7

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    const/4 v2, 0x1

    move v0, v2

    .line 148
    :goto_0
    return v0

    .line 147
    :cond_0
    new-instance v2, Landroid/support/v7/view/menu/MenuPopupHelper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuPopupHelper;->show()V

    .line 148
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 91
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v3, v2, Landroid/support/v7/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 92
    return-void

    .line 91
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 5

    .prologue
    .line 74
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/view/StandaloneActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

.method public setTitle(I)V
    .locals 5

    .prologue
    .line 69
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/view/StandaloneActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 80
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 81
    return-void
.end method
