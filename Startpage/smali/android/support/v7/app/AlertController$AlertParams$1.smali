.class Landroid/support/v7/app/AlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AlertController$AlertParams;->createListView(Landroid/support/v7/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AlertController$AlertParams;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V
    .locals 12

    .prologue
    .line 886
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Landroid/support/v7/app/AlertController$AlertParams$1;->this$0:Landroid/support/v7/app/AlertController$AlertParams;

    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Landroid/support/v7/app/AlertController$AlertParams$1;->val$listView:Landroid/widget/ListView;

    move-object v7, v0

    move-object v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    .line 889
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    move v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-super {v6, v7, v8, v9}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 890
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AlertController$AlertParams$1;->this$0:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v6, v6, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v6, :cond_0

    .line 891
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AlertController$AlertParams$1;->this$0:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object v6, v6, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItems:[Z

    move v7, v1

    aget-boolean v6, v6, v7

    move v5, v6

    .line 892
    move v6, v5

    if-eqz v6, :cond_0

    .line 893
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AlertController$AlertParams$1;->val$listView:Landroid/widget/ListView;

    move v7, v1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 896
    :cond_0
    move-object v6, v4

    move-object v0, v6

    return-object v0
.end method
