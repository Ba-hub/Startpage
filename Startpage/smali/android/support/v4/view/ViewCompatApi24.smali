.class Landroid/support/v4/view/ViewCompatApi24;
.super Ljava/lang/Object;
.source "ViewCompatApi24.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setPointerIcon(Landroid/view/View;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/view/PointerIcon;

    invoke-virtual {v2, v3}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 25
    return-void
.end method
