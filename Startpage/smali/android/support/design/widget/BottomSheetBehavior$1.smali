.class Landroid/support/design/widget/BottomSheetBehavior$1;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BottomSheetBehavior;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 541
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/design/widget/BottomSheetBehavior$1;->val$child:Landroid/view/View;

    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroid/support/design/widget/BottomSheetBehavior$1;->val$state:I

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 544
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/BottomSheetBehavior$1;->this$0:Landroid/support/design/widget/BottomSheetBehavior;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/BottomSheetBehavior$1;->val$child:Landroid/view/View;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/BottomSheetBehavior$1;->val$state:I

    invoke-static {v1, v2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->access$000(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    .line 545
    return-void
.end method
