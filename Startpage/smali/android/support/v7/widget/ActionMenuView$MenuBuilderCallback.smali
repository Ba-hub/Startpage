.class Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 4

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroid/support/v7/widget/ActionMenuView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ActionMenuView;Landroid/support/v7/widget/ActionMenuView$1;)V
    .locals 5

    .prologue
    .line 755
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/support/v7/widget/ActionMenuView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 758
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v3}, Landroid/support/v7/widget/ActionMenuView;->access$200(Landroid/support/v7/widget/ActionMenuView;)Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroid/support/v7/widget/ActionMenuView;

    .line 759
    invoke-static {v3}, Landroid/support/v7/widget/ActionMenuView;->access$200(Landroid/support/v7/widget/ActionMenuView;)Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 4

    .prologue
    .line 764
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v2}, Landroid/support/v7/widget/ActionMenuView;->access$300(Landroid/support/v7/widget/ActionMenuView;)Landroid/support/v7/view/menu/MenuBuilder$Callback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 765
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;->this$0:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v2}, Landroid/support/v7/widget/ActionMenuView;->access$300(Landroid/support/v7/widget/ActionMenuView;)Landroid/support/v7/view/menu/MenuBuilder$Callback;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder$Callback;->onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 767
    :cond_0
    return-void
.end method
