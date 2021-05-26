.class abstract Landroid/support/v4/app/BaseFragmentActivityGingerbread;
.super Landroid/app/Activity;
.source "BaseFragmentActivityGingerbread.java"


# instance fields
.field mStartedIntentSenderFromFragment:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static checkForValidRequestCode(I)V
    .locals 5

    .prologue
    .line 87
    move v0, p0

    move v1, v0

    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Can only use lower 16 bits for requestCode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method abstract dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/BaseFragmentActivityGingerbread;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v2

    if-nez v2, :cond_0

    .line 48
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/BaseFragmentActivityGingerbread;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 51
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/app/BaseFragmentActivityGingerbread;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 57
    move-object v5, v4

    if-nez v5, :cond_0

    .line 58
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    .line 60
    :goto_0
    return-object v0

    :cond_0
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 14
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/app/BaseFragmentActivityGingerbread;->mStartedIntentSenderFromFragment:Z

    if-nez v7, :cond_0

    .line 74
    move v7, v2

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 75
    move v7, v2

    invoke-static {v7}, Landroid/support/v4/app/BaseFragmentActivityGingerbread;->checkForValidRequestCode(I)V

    .line 78
    :cond_0
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-super/range {v7 .. v13}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 80
    return-void
.end method
