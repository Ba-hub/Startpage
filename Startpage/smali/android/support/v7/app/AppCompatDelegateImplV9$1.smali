.class Landroid/support/v7/app/AppCompatDelegateImplV9$1;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV9$1;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$1;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-static {v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->access$000(Landroid/support/v7/app/AppCompatDelegateImplV9;)I

    move-result v1

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 129
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$1;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->access$100(Landroid/support/v7/app/AppCompatDelegateImplV9;I)V

    .line 131
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$1;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-static {v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->access$000(Landroid/support/v7/app/AppCompatDelegateImplV9;)I

    move-result v1

    const/16 v2, 0x1000

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1

    .line 132
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$1;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    const/16 v2, 0x6c

    invoke-static {v1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->access$100(Landroid/support/v7/app/AppCompatDelegateImplV9;I)V

    .line 134
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$1;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->access$202(Landroid/support/v7/app/AppCompatDelegateImplV9;Z)Z

    move-result v1

    .line 135
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$1;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->access$002(Landroid/support/v7/app/AppCompatDelegateImplV9;I)I

    move-result v1

    .line 136
    return-void
.end method
