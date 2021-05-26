.class final Landroid/support/design/widget/Snackbar$1;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 173
    const/4 v2, 0x0

    move v0, v2

    :goto_0
    return v0

    .line 167
    :pswitch_0
    move-object v2, v1

    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/support/design/widget/Snackbar;

    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar;->showView()V

    .line 168
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 170
    :pswitch_1
    move-object v2, v1

    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/support/design/widget/Snackbar;

    move-object v3, v1

    iget v3, v3, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/support/design/widget/Snackbar;->hideView(I)V

    .line 171
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
