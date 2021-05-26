.class Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ListPopupWindow;)V
    .locals 4

    .prologue
    .line 1345
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/support/v7/widget/ListPopupWindow$1;)V
    .locals 5

    .prologue
    .line 1345
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 1350
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5

    .prologue
    .line 1354
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    .line 1355
    invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1356
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v3}, Landroid/support/v7/widget/ListPopupWindow;->access$700(Landroid/support/v7/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v4}, Landroid/support/v7/widget/ListPopupWindow;->access$600(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1357
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v3}, Landroid/support/v7/widget/ListPopupWindow;->access$600(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;->run()V

    .line 1359
    :cond_0
    return-void
.end method
