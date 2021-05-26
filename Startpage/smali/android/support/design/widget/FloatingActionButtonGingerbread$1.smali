.class Landroid/support/design/widget/FloatingActionButtonGingerbread$1;
.super Landroid/support/design/widget/AnimationUtils$AnimationListenerAdapter;
.source "FloatingActionButtonGingerbread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/FloatingActionButtonGingerbread;->hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;

.field final synthetic val$fromUser:Z

.field final synthetic val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;ZLandroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .locals 6

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/design/widget/FloatingActionButtonGingerbread$1;->this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;

    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Landroid/support/design/widget/FloatingActionButtonGingerbread$1;->val$fromUser:Z

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/design/widget/FloatingActionButtonGingerbread$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/design/widget/AnimationUtils$AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$1;->this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mAnimState:I

    .line 163
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$1;->this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/16 v3, 0x8

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/FloatingActionButtonGingerbread$1;->val$fromUser:Z

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 164
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    if-eqz v2, :cond_0

    .line 165
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-interface {v2}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    .line 167
    :cond_0
    return-void
.end method
