.class Landroid/support/v7/app/AlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AlertController$AlertParams;->createListView(Landroid/support/v7/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AlertController$AlertParams;

.field final synthetic val$dialog:Landroid/support/v7/app/AlertController;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/widget/ListView;Landroid/support/v7/app/AlertController;)V
    .locals 6

    .prologue
    .line 966
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/app/AlertController$AlertParams$4;->this$0:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/app/AlertController$AlertParams$4;->val$listView:Landroid/widget/ListView;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v7/app/AlertController$AlertParams$4;->val$dialog:Landroid/support/v7/app/AlertController;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 969
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AlertController$AlertParams$4;->this$0:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v6, v6, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v6, :cond_0

    .line 970
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AlertController$AlertParams$4;->this$0:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v6, v6, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItems:[Z

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AlertController$AlertParams$4;->val$listView:Landroid/widget/ListView;

    move v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v8

    aput-boolean v8, v6, v7

    .line 972
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AlertController$AlertParams$4;->this$0:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v6, v6, Landroid/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController$AlertParams$4;->val$dialog:Landroid/support/v7/app/AlertController;

    .line 973
    invoke-static {v7}, Landroid/support/v7/app/AlertController;->access$600(Landroid/support/v7/app/AlertController;)Landroid/support/v7/app/AppCompatDialog;

    move-result-object v7

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AlertController$AlertParams$4;->val$listView:Landroid/widget/ListView;

    move v10, v3

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v9

    .line 972
    invoke-interface {v6, v7, v8, v9}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 974
    return-void
.end method
