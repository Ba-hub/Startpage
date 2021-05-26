.class Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;
.super Ljava/lang/Object;
.source "ShareActionProvider.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ShareActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareMenuItemOnMenuItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ShareActionProvider;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ShareActionProvider;)V
    .locals 4

    .prologue
    .line 355
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/support/v7/widget/ShareActionProvider;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ShareActionProvider;Landroid/support/v7/widget/ShareActionProvider$1;)V
    .locals 5

    .prologue
    .line 355
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;-><init>(Landroid/support/v7/widget/ShareActionProvider;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    .line 358
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/support/v7/widget/ShareActionProvider;

    invoke-static {v6}, Landroid/support/v7/widget/ShareActionProvider;->access$100(Landroid/support/v7/widget/ShareActionProvider;)Landroid/content/Context;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/support/v7/widget/ShareActionProvider;

    .line 359
    invoke-static {v7}, Landroid/support/v7/widget/ShareActionProvider;->access$200(Landroid/support/v7/widget/ShareActionProvider;)Ljava/lang/String;

    move-result-object v7

    .line 358
    invoke-static {v6, v7}, Landroid/support/v7/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v6

    move-object v2, v6

    .line 360
    move-object v6, v1

    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    move v3, v6

    .line 361
    move-object v6, v2

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v6

    move-object v4, v6

    .line 362
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 363
    move-object v6, v4

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 364
    const-string v6, "android.intent.action.SEND"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.intent.action.SEND_MULTIPLE"

    move-object v7, v5

    .line 365
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 366
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/support/v7/widget/ShareActionProvider;

    move-object v7, v4

    invoke-static {v6, v7}, Landroid/support/v7/widget/ShareActionProvider;->access$300(Landroid/support/v7/widget/ShareActionProvider;Landroid/content/Intent;)V

    .line 368
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/support/v7/widget/ShareActionProvider;

    invoke-static {v6}, Landroid/support/v7/widget/ShareActionProvider;->access$100(Landroid/support/v7/widget/ShareActionProvider;)Landroid/content/Context;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 370
    :cond_2
    const/4 v6, 0x1

    move v0, v6

    return v0
.end method
