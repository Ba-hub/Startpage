.class Landroid/support/v7/widget/ActivityChooserView$1;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActivityChooserView;)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActivityChooserView$1;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    move-object v2, v0

    invoke-direct {v2}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/database/DataSetObserver;->onChanged()V

    .line 130
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView$1;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/widget/ActivityChooserView;->access$000(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 131
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 135
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView$1;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/widget/ActivityChooserView;->access$000(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetInvalidated()V

    .line 136
    return-void
.end method
