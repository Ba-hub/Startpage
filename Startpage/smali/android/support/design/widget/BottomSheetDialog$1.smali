.class Landroid/support/design/widget/BottomSheetDialog$1;
.super Ljava/lang/Object;
.source "BottomSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BottomSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BottomSheetDialog;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BottomSheetDialog;)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/BottomSheetDialog$1;->this$0:Landroid/support/design/widget/BottomSheetDialog;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/BottomSheetDialog$1;->this$0:Landroid/support/design/widget/BottomSheetDialog;

    invoke-static {v2}, Landroid/support/design/widget/BottomSheetDialog;->access$000(Landroid/support/design/widget/BottomSheetDialog;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/BottomSheetDialog$1;->this$0:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v2}, Landroid/support/design/widget/BottomSheetDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/BottomSheetDialog$1;->this$0:Landroid/support/design/widget/BottomSheetDialog;

    invoke-static {v2}, Landroid/support/design/widget/BottomSheetDialog;->access$100(Landroid/support/design/widget/BottomSheetDialog;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/BottomSheetDialog$1;->this$0:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v2}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 128
    :cond_0
    return-void
.end method
