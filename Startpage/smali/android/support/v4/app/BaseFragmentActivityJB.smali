.class abstract Landroid/support/v4/app/BaseFragmentActivityJB;
.super Landroid/support/v4/app/BaseFragmentActivityHoneycomb;
.source "BaseFragmentActivityJB.java"


# instance fields
.field mStartedActivityFromFragment:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;-><init>()V

    return-void
.end method


# virtual methods
.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 8
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/BaseFragmentActivityJB;->mStartedActivityFromFragment:Z

    if-nez v4, :cond_0

    .line 44
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 45
    move v4, v2

    invoke-static {v4}, Landroid/support/v4/app/BaseFragmentActivityJB;->checkForValidRequestCode(I)V

    .line 48
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 16
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
    .line 57
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v4/app/BaseFragmentActivityJB;->mStartedIntentSenderFromFragment:Z

    if-nez v8, :cond_0

    .line 58
    move v8, v2

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 59
    move v8, v2

    invoke-static {v8}, Landroid/support/v4/app/BaseFragmentActivityJB;->checkForValidRequestCode(I)V

    .line 62
    :cond_0
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move-object v15, v7

    invoke-super/range {v8 .. v15}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 64
    return-void
.end method
