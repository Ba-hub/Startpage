.class Landroid/support/design/widget/BottomSheetDialog$2;
.super Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;
.source "BottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BottomSheetDialog;
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
    .line 164
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/BottomSheetDialog$2;->this$0:Landroid/support/design/widget/BottomSheetDialog;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 175
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 169
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/BottomSheetDialog$2;->this$0:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v3}, Landroid/support/design/widget/BottomSheetDialog;->dismiss()V

    .line 171
    :cond_0
    return-void
.end method
