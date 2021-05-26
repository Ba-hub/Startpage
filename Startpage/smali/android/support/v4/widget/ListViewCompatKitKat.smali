.class Landroid/support/v4/widget/ListViewCompatKitKat;
.super Ljava/lang/Object;
.source "ListViewCompatKitKat.java"


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

.method static scrollListBy(Landroid/widget/ListView;I)V
    .locals 4

    .prologue
    .line 24
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->scrollListBy(I)V

    .line 25
    return-void
.end method
