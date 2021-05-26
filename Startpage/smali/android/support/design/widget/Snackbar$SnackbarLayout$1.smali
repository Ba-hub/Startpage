.class Landroid/support/design/widget/Snackbar$SnackbarLayout$1;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar$SnackbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/Snackbar$SnackbarLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar$SnackbarLayout;)V
    .locals 4

    .prologue
    .line 710
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/Snackbar$SnackbarLayout$1;->this$0:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 8

    .prologue
    .line 715
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    move-object v6, v1

    .line 716
    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v7

    .line 715
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 717
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method
