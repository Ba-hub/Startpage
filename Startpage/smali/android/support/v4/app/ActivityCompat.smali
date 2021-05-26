.class public Landroid/support/v4/app/ActivityCompat;
.super Landroid/support/v4/content/ContextCompat;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;,
        Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;,
        Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/content/ContextCompat;-><init>()V

    return-void
.end method

.method private static createCallback(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;
    .locals 6

    .prologue
    .line 429
    move-object v0, p0

    const/4 v2, 0x0

    move-object v1, v2

    .line 430
    move-object v2, v0

    if-eqz v2, :cond_0

    .line 431
    new-instance v2, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroid/support/v4/app/SharedElementCallback;)V

    move-object v1, v2

    .line 433
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private static createCallback23(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;
    .locals 6

    .prologue
    .line 438
    move-object v0, p0

    const/4 v2, 0x0

    move-object v1, v2

    .line 439
    move-object v2, v0

    if-eqz v2, :cond_0

    .line 440
    new-instance v2, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;-><init>(Landroid/support/v4/app/SharedElementCallback;)V

    move-object v1, v2

    .line 442
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public static finishAffinity(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 221
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 222
    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompatJB;->finishAffinity(Landroid/app/Activity;)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static finishAfterTransition(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 238
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 239
    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompat21;->finishAfterTransition(Landroid/app/Activity;)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static invalidateOptionsMenu(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    .line 114
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 115
    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompatHoneycomb;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 116
    const/4 v1, 0x1

    move v0, v1

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static postponeEnterTransition(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 306
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 307
    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompat21;->postponeEnterTransition(Landroid/app/Activity;)V

    .line 309
    :cond_0
    return-void
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 11
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 374
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 375
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Landroid/support/v4/app/ActivityCompatApi23;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    move-object v4, v0

    instance-of v4, v4, Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;

    if-eqz v4, :cond_0

    .line 377
    new-instance v4, Landroid/os/Handler;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v3, v4

    .line 378
    move-object v4, v3

    new-instance v5, Landroid/support/v4/app/ActivityCompat$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v0

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v4/app/ActivityCompat$1;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    goto :goto_0
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V
    .locals 4

    .prologue
    .line 280
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 281
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/app/ActivityCompat;->createCallback23(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompatApi23;->setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 283
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/app/ActivityCompat;->createCallback(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat21;->setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V

    goto :goto_0
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V
    .locals 4

    .prologue
    .line 298
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 299
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/app/ActivityCompat;->createCallback23(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompatApi23;->setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 301
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/app/ActivityCompat;->createCallback(Landroid/support/v4/app/SharedElementCallback;)Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat21;->setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V

    goto :goto_0
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 4
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 421
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 422
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompatApi23;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .line 424
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 140
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v4/app/ActivityCompatJB;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 8
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 169
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Landroid/support/v4/app/ActivityCompatJB;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 16
    .param p7    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 204
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_0

    .line 205
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move-object v15, v7

    invoke-static/range {v8 .. v15}, Landroid/support/v4/app/ActivityCompatJB;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    invoke-virtual/range {v8 .. v14}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0
.end method

.method public static startPostponedEnterTransition(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 312
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 313
    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompat21;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 315
    :cond_0
    return-void
.end method


# virtual methods
.method public getReferrer(Landroid/app/Activity;)Landroid/net/Uri;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, p1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-lt v5, v6, :cond_0

    .line 256
    move-object v5, v1

    invoke-static {v5}, Landroid/support/v4/app/ActivityCompat22;->getReferrer(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v5

    .line 267
    :goto_0
    return-object v0

    .line 258
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    move-object v2, v5

    .line 259
    move-object v5, v2

    const-string v6, "android.intent.extra.REFERRER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    move-object v3, v5

    .line 260
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 261
    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 263
    :cond_1
    move-object v5, v2

    const-string v6, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 264
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 265
    move-object v5, v4

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 267
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method
