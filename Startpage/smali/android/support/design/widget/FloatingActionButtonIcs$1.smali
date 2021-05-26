.class Landroid/support/design/widget/FloatingActionButtonIcs$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonIcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/FloatingActionButtonIcs;->hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonIcs;

.field final synthetic val$fromUser:Z

.field final synthetic val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButtonIcs;ZLandroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .locals 6

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/design/widget/FloatingActionButtonIcs$1;->this$0:Landroid/support/design/widget/FloatingActionButtonIcs;

    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Landroid/support/design/widget/FloatingActionButtonIcs$1;->val$fromUser:Z

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/design/widget/FloatingActionButtonIcs$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-object v4, v0

    invoke-direct {v4}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/FloatingActionButtonIcs$1;->mCancelled:Z

    .line 80
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonIcs$1;->this$0:Landroid/support/design/widget/FloatingActionButtonIcs;

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/design/widget/FloatingActionButtonIcs;->mAnimState:I

    .line 86
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/FloatingActionButtonIcs$1;->mCancelled:Z

    if-nez v2, :cond_0

    .line 87
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonIcs$1;->this$0:Landroid/support/design/widget/FloatingActionButtonIcs;

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/16 v3, 0x8

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/FloatingActionButtonIcs$1;->val$fromUser:Z

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 88
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonIcs$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    if-eqz v2, :cond_0

    .line 89
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonIcs$1;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-interface {v2}, Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    .line 92
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonIcs$1;->this$0:Landroid/support/design/widget/FloatingActionButtonIcs;

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v3, 0x0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/FloatingActionButtonIcs$1;->val$fromUser:Z

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 74
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/design/widget/FloatingActionButtonIcs$1;->mCancelled:Z

    .line 75
    return-void
.end method
