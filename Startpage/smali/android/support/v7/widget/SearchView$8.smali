.class Landroid/support/v7/widget/SearchView$8;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 4

    .prologue
    .line 1044
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView$8;->this$0:Landroid/support/v7/widget/SearchView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    .line 1048
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView$8;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-static {v4}, Landroid/support/v7/widget/SearchView;->access$1400(Landroid/support/v7/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1049
    const/4 v4, 0x0

    move v0, v4

    .line 1078
    :goto_0
    return v0

    .line 1059
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView$8;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-static {v4}, Landroid/support/v7/widget/SearchView;->access$1200(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView$8;->this$0:Landroid/support/v7/widget/SearchView;

    .line 1060
    invoke-static {v4}, Landroid/support/v7/widget/SearchView;->access$1200(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 1061
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView$8;->this$0:Landroid/support/v7/widget/SearchView;

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Landroid/support/v7/widget/SearchView;->access$1500(Landroid/support/v7/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 1066
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView$8;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-static {v4}, Landroid/support/v7/widget/SearchView;->access$1200(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->access$1600(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v3

    invoke-static {v4}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1067
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1068
    move v4, v2

    const/16 v5, 0x42

    if-ne v4, v5, :cond_2

    .line 1069
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->cancelLongPress()V

    .line 1072
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView$8;->this$0:Landroid/support/v7/widget/SearchView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/SearchView$8;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-static {v7}, Landroid/support/v7/widget/SearchView;->access$1200(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 1073
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1072
    invoke-static {v4, v5, v6, v7}, Landroid/support/v7/widget/SearchView;->access$1700(Landroid/support/v7/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    .line 1074
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 1078
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method
