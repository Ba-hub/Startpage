.class Landroid/support/design/widget/TextInputLayout$4;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TextInputLayout;->updatePasswordToggleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .locals 4

    .prologue
    .line 983
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout$4;->this$0:Landroid/support/design/widget/TextInputLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 986
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout$4;->this$0:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v2}, Landroid/support/design/widget/TextInputLayout;->access$500(Landroid/support/design/widget/TextInputLayout;)V

    .line 987
    return-void
.end method
