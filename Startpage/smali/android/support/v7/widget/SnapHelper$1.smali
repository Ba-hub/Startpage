.class Landroid/support/v7/widget/SnapHelper$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SnapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SnapHelper;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SnapHelper;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SnapHelper$1;->this$0:Landroid/support/v7/widget/SnapHelper;

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 6

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 48
    move v3, v2

    if-nez v3, :cond_0

    .line 49
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SnapHelper$1;->this$0:Landroid/support/v7/widget/SnapHelper;

    invoke-static {v3}, Landroid/support/v7/widget/SnapHelper;->access$000(Landroid/support/v7/widget/SnapHelper;)V

    .line 51
    :cond_0
    return-void
.end method
