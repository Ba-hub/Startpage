.class Landroid/support/design/widget/TabLayout$PagerAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 4

    .prologue
    .line 2180
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;->this$0:Landroid/support/design/widget/TabLayout;

    move-object v2, v0

    invoke-direct {v2}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/support/design/widget/TabLayout$1;)V
    .locals 5

    .prologue
    .line 2180
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;-><init>(Landroid/support/design/widget/TabLayout;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 2183
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->access$2900(Landroid/support/design/widget/TabLayout;)V

    .line 2184
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 2188
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->access$2900(Landroid/support/design/widget/TabLayout;)V

    .line 2189
    return-void
.end method
