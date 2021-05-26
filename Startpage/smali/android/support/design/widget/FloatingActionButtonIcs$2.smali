.class Landroid/support/design/widget/FloatingActionButtonIcs$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonIcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/FloatingActionButtonIcs;->show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonIcs;

.field final synthetic val$fromUser:Z

.field final synthetic val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButtonIcs;ZLandroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .locals 6

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/design/widget/FloatingActionButtonIcs$2;->this$0:Landroid/support/design/widget/FloatingActionButtonIcs;

    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Landroid/support/design/widget/FloatingActionButtonIcs$2;->val$fromUser:Z

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/design/widget/FloatingActionButtonIcs$2;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-object v4, v0

    invoke-direct {v4}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonIcs$2;->this$0:Landroid/support/design/widget/FloatingActionButtonIcs;

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/design/widget/FloatingActionButtonIcs;->mAnimState:I

    .line 137
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonIcs$2;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    if-eqz v2, :cond_0

    .line 138
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonIcs$2;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-interface {v2}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onShown()V

    .line 140
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonIcs$2;->this$0:Landroid/support/design/widget/FloatingActionButtonIcs;

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v3, 0x0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/FloatingActionButtonIcs$2;->val$fromUser:Z

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 132
    return-void
.end method
