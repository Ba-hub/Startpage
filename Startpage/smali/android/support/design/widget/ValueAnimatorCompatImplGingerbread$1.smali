.class Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread$1;
.super Ljava/lang/Object;
.source "ValueAnimatorCompatImplGingerbread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;


# direct methods
.method constructor <init>(Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread$1;->this$0:Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread$1;->this$0:Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompatImplGingerbread;->update()V

    .line 52
    return-void
.end method
