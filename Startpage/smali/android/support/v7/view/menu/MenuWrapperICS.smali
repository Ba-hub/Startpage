.class Landroid/support/v7/view/menu/MenuWrapperICS;
.super Landroid/support/v7/view/menu/BaseMenuWrapper;
.source "MenuWrapperICS.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/view/menu/BaseMenuWrapper",
        "<",
        "Landroid/support/v4/internal/view/SupportMenu;",
        ">;",
        "Landroid/view/Menu;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenu;)V
    .locals 6

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/view/menu/BaseMenuWrapper;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 36
    return-void
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 45
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v3, Landroid/support/v4/internal/view/SupportMenu;

    move v4, v1

    invoke-interface {v3, v4}, Landroid/support/v4/internal/view/SupportMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 11

    .prologue
    .line 55
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v6, Landroid/support/v4/internal/view/SupportMenu;

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/support/v4/internal/view/SupportMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 11

    .prologue
    .line 50
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v6, Landroid/support/v4/internal/view/SupportMenu;

    move v7, v1

    move v8, v2

    move v9, v3

    move-object v10, v4

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/support/v4/internal/view/SupportMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v3, Landroid/support/v4/internal/view/SupportMenu;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/support/v4/internal/view/SupportMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 22

    .prologue
    .line 82
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    const/4 v13, 0x0

    move-object v9, v13

    .line 83
    move-object v13, v8

    if-eqz v13, :cond_0

    .line 84
    move-object v13, v8

    array-length v13, v13

    new-array v13, v13, [Landroid/view/MenuItem;

    move-object v9, v13

    .line 87
    :cond_0
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v13, Landroid/support/v4/internal/view/SupportMenu;

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v21, v9

    .line 88
    invoke-interface/range {v13 .. v21}, Landroid/support/v4/internal/view/SupportMenu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    move-result v13

    move v10, v13

    .line 90
    move-object v13, v9

    if-eqz v13, :cond_1

    .line 91
    const/4 v13, 0x0

    move v11, v13

    move-object v13, v9

    array-length v13, v13

    move v12, v13

    :goto_0
    move v13, v11

    move v14, v12

    if-ge v13, v14, :cond_1

    .line 92
    move-object v13, v8

    move v14, v11

    move-object v15, v0

    move-object/from16 v16, v9

    move/from16 v17, v11

    aget-object v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/support/v7/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v15

    aput-object v15, v13, v14

    .line 91
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 96
    :cond_1
    move v13, v10

    move v0, v13

    return v0
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 5

    .prologue
    .line 65
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v3, Landroid/support/v4/internal/view/SupportMenu;

    move v4, v1

    invoke-interface {v3, v4}, Landroid/support/v4/internal/view/SupportMenu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 11

    .prologue
    .line 75
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v6, Landroid/support/v4/internal/view/SupportMenu;

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    .line 76
    invoke-interface {v6, v7, v8, v9, v10}, Landroid/support/v4/internal/view/SupportMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v6

    .line 75
    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/MenuWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 11

    .prologue
    .line 70
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v6, Landroid/support/v4/internal/view/SupportMenu;

    move v7, v1

    move v8, v2

    move v9, v3

    move-object v10, v4

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/support/v4/internal/view/SupportMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/MenuWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v3, Landroid/support/v4/internal/view/SupportMenu;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/support/v4/internal/view/SupportMenu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuWrapperICS;->getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuWrapperICS;->internalClear()V

    .line 114
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/internal/view/SupportMenu;

    invoke-interface {v1}, Landroid/support/v4/internal/view/SupportMenu;->clear()V

    .line 115
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/internal/view/SupportMenu;

    invoke-interface {v1}, Landroid/support/v4/internal/view/SupportMenu;->close()V

    .line 155
    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 139
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v3, Landroid/support/v4/internal/view/SupportMenu;

    move v4, v1

    invoke-interface {v3, v4}, Landroid/support/v4/internal/view/SupportMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 149
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v3, Landroid/support/v4/internal/view/SupportMenu;

    move v4, v1

    invoke-interface {v3, v4}, Landroid/support/v4/internal/view/SupportMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public hasVisibleItems()Z
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/internal/view/SupportMenu;

    invoke-interface {v1}, Landroid/support/v4/internal/view/SupportMenu;->hasVisibleItems()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 164
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v3, Landroid/support/v4/internal/view/SupportMenu;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v4/internal/view/SupportMenu;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public performIdentifierAction(II)Z
    .locals 6

    .prologue
    .line 169
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v3, Landroid/support/v4/internal/view/SupportMenu;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v4/internal/view/SupportMenu;->performIdentifierAction(II)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 8

    .prologue
    .line 159
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v4, Landroid/support/v4/internal/view/SupportMenu;

    move v5, v1

    move-object v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Landroid/support/v4/internal/view/SupportMenu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public removeGroup(I)V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuWrapperICS;->internalRemoveGroup(I)V

    .line 108
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/internal/view/SupportMenu;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/internal/view/SupportMenu;->removeGroup(I)V

    .line 109
    return-void
.end method

.method public removeItem(I)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuWrapperICS;->internalRemoveItem(I)V

    .line 102
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/internal/view/SupportMenu;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/internal/view/SupportMenu;->removeItem(I)V

    .line 103
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 8

    .prologue
    .line 119
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v4, Landroid/support/v4/internal/view/SupportMenu;

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-interface {v4, v5, v6, v7}, Landroid/support/v4/internal/view/SupportMenu;->setGroupCheckable(IZZ)V

    .line 120
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 6

    .prologue
    .line 129
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v3, Landroid/support/v4/internal/view/SupportMenu;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v4/internal/view/SupportMenu;->setGroupEnabled(IZ)V

    .line 130
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 6

    .prologue
    .line 124
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v3, Landroid/support/v4/internal/view/SupportMenu;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v4/internal/view/SupportMenu;->setGroupVisible(IZ)V

    .line 125
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 4

    .prologue
    .line 174
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/internal/view/SupportMenu;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/internal/view/SupportMenu;->setQwertyMode(Z)V

    .line 175
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuWrapperICS;->mWrappedObject:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/internal/view/SupportMenu;

    invoke-interface {v1}, Landroid/support/v4/internal/view/SupportMenu;->size()I

    move-result v1

    move v0, v1

    return v0
.end method
