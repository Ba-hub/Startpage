.class Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ListPopupWindow;)V
    .locals 4

    .prologue
    .line 1327
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/support/v7/widget/ListPopupWindow$1;)V
    .locals 5

    .prologue
    .line 1327
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    .line 1330
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    move v3, v6

    .line 1331
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    move v4, v6

    .line 1332
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    move v5, v6

    .line 1334
    move v6, v3

    if-nez v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1335
    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    if-ltz v6, :cond_1

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1336
    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v7

    if-ge v6, v7, :cond_1

    move v6, v5

    if-ltz v6, :cond_1

    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 1337
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v6}, Landroid/support/v7/widget/ListPopupWindow;->access$700(Landroid/support/v7/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v7}, Landroid/support/v7/widget/ListPopupWindow;->access$600(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v7

    const-wide/16 v8, 0xfa

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v6

    .line 1341
    :cond_0
    :goto_0
    const/4 v6, 0x0

    move v0, v6

    return v0

    .line 1338
    :cond_1
    move v6, v3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1339
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v6}, Landroid/support/v7/widget/ListPopupWindow;->access$700(Landroid/support/v7/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v7}, Landroid/support/v7/widget/ListPopupWindow;->access$600(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
