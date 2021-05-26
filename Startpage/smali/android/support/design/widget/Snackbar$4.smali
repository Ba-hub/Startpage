.class Landroid/support/design/widget/Snackbar$4;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar;->showView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 4

    .prologue
    .line 456
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/Snackbar$4;->this$0:Landroid/support/design/widget/Snackbar;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 459
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 460
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/Snackbar$4;->this$0:Landroid/support/design/widget/Snackbar;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/design/widget/Snackbar;->access$000(Landroid/support/design/widget/Snackbar;I)V

    .line 461
    return-void
.end method

.method public onDragStateChanged(I)V
    .locals 4

    .prologue
    .line 465
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 476
    :goto_0
    return-void

    .line 469
    :pswitch_0
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar$4;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-static {v3}, Landroid/support/design/widget/Snackbar;->access$200(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/SnackbarManager$Callback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/SnackbarManager;->cancelTimeout(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 470
    goto :goto_0

    .line 473
    :pswitch_1
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/Snackbar$4;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-static {v3}, Landroid/support/design/widget/Snackbar;->access$200(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/SnackbarManager$Callback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/SnackbarManager;->restoreTimeout(Landroid/support/design/widget/SnackbarManager$Callback;)V

    goto :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
