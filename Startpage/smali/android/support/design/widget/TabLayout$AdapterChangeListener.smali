.class Landroid/support/design/widget/TabLayout$AdapterChangeListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterChangeListener"
.end annotation


# instance fields
.field private mAutoRefresh:Z

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 4

    .prologue
    .line 2192
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->this$0:Landroid/support/design/widget/TabLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/support/design/widget/TabLayout$1;)V
    .locals 5

    .prologue
    .line 2192
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/TabLayout$AdapterChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 7
    .param p1    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2198
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v4}, Landroid/support/design/widget/TabLayout;->access$3000(Landroid/support/design/widget/TabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 2199
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->this$0:Landroid/support/design/widget/TabLayout;

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->mAutoRefresh:Z

    invoke-static {v4, v5, v6}, Landroid/support/design/widget/TabLayout;->access$3100(Landroid/support/design/widget/TabLayout;Landroid/support/v4/view/PagerAdapter;Z)V

    .line 2201
    :cond_0
    return-void
.end method

.method setAutoRefresh(Z)V
    .locals 4

    .prologue
    .line 2204
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/widget/TabLayout$AdapterChangeListener;->mAutoRefresh:Z

    .line 2205
    return-void
.end method
