.class public Landroid/support/design/widget/BottomSheetDialogFragment;
.super Landroid/support/v7/app/AppCompatDialogFragment;
.source "BottomSheetDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/design/widget/BottomSheetDialog;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/BottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/BottomSheetDialogFragment;->getTheme()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    move-object v0, v2

    return-object v0
.end method
