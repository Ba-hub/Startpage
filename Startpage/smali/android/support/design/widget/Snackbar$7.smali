.class Landroid/support/design/widget/Snackbar$7;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar;->animateViewIn()V
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
    .line 541
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/Snackbar$7;->this$0:Landroid/support/design/widget/Snackbar;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 550
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/Snackbar$7;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-static {v2}, Landroid/support/design/widget/Snackbar;->access$700(Landroid/support/design/widget/Snackbar;)V

    .line 551
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 544
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/Snackbar$7;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-static {v2}, Landroid/support/design/widget/Snackbar;->access$400(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-result-object v2

    const/16 v3, 0x46

    const/16 v4, 0xb4

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->animateChildrenIn(II)V

    .line 546
    return-void
.end method
