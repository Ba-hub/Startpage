.class Landroid/support/v7/app/AppCompatDelegateImplV14;
.super Landroid/support/v7/app/AppCompatDelegateImplV11;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;,
        Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;
    }
.end annotation


# static fields
.field private static final KEY_LOCAL_NIGHT_MODE:Ljava/lang/String; = "appcompat:local_night_mode"


# instance fields
.field private mApplyDayNightCalled:Z

.field private mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

.field private mHandleNativeActionModes:Z

.field private mLocalNightMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .locals 8

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV11;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 41
    move-object v4, v0

    const/16 v5, -0x64

    iput v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    .line 45
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z

    .line 51
    return-void
.end method

.method private ensureAutoNightModeManager()V
    .locals 7

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    if-nez v1, :cond_0

    .line 224
    move-object v1, v0

    new-instance v2, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/support/v7/app/TwilightManager;->getInstance(Landroid/content/Context;)Landroid/support/v7/app/TwilightManager;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/support/v7/app/TwilightManager;)V

    iput-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    .line 226
    :cond_0
    return-void
.end method

.method private getNightMode()I
    .locals 3

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    const/16 v2, -0x64

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    :goto_0
    move v0, v1

    return v0

    :cond_0
    invoke-static {}, Landroid/support/v7/app/AppCompatDelegateImplV14;->getDefaultNightMode()I

    move-result v1

    goto :goto_0
.end method

.method private shouldRecreateOnNightModeChange()Z
    .locals 9

    .prologue
    .line 235
    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 238
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v1, v3

    .line 240
    move-object v3, v1

    :try_start_0
    new-instance v4, Landroid/content/ComponentName;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    .line 241
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v5, 0x0

    .line 240
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    move-object v2, v3

    .line 244
    move-object v3, v2

    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x200

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 252
    :goto_1
    return v0

    .line 244
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 248
    const-string v3, "AppCompatDelegate"

    const-string v4, "Exception while getting ActivityInfo"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 249
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 252
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method private updateForNightMode(I)Z
    .locals 12

    .prologue
    .line 187
    move-object v0, p0

    move v1, p1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v2, v7

    .line 188
    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    move-object v3, v7

    .line 189
    move-object v7, v3

    iget v7, v7, Landroid/content/res/Configuration;->uiMode:I

    const/16 v8, 0x30

    and-int/lit8 v7, v7, 0x30

    move v4, v7

    .line 191
    move v7, v1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    const/16 v7, 0x20

    :goto_0
    move v5, v7

    .line 195
    move v7, v4

    move v8, v5

    if-eq v7, v8, :cond_2

    .line 196
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/app/AppCompatDelegateImplV14;->shouldRecreateOnNightModeChange()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 202
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    move-object v6, v7

    .line 203
    move-object v7, v6

    invoke-virtual {v7}, Landroid/app/Activity;->recreate()V

    .line 213
    :goto_1
    const/4 v7, 0x1

    move v0, v7

    .line 219
    :goto_2
    return v0

    .line 191
    :cond_0
    const/16 v7, 0x10

    goto :goto_0

    .line 208
    :cond_1
    new-instance v7, Landroid/content/res/Configuration;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v3

    invoke-direct {v8, v9}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v6, v7

    .line 209
    move-object v7, v6

    move v8, v5

    move-object v9, v6

    iget v9, v9, Landroid/content/res/Configuration;->uiMode:I

    const/16 v10, -0x31

    and-int/lit8 v9, v9, -0x31

    or-int/2addr v8, v9

    iput v8, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 211
    move-object v7, v2

    move-object v8, v6

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_1

    .line 219
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_2
.end method


# virtual methods
.method public applyDayNight()Z
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    .line 86
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/app/AppCompatDelegateImplV14;->getNightMode()I

    move-result v4

    move v2, v4

    .line 87
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV14;->mapNightMode(I)I

    move-result v4

    move v3, v4

    .line 88
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 89
    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV14;->updateForNightMode(I)Z

    move-result v4

    move v1, v4

    .line 92
    :cond_0
    move v4, v2

    if-nez v4, :cond_1

    .line 94
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/app/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V

    .line 95
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->setup()V

    .line 98
    :cond_1
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/app/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z

    .line 99
    move v4, v1

    move v0, v4

    return v0
.end method

.method final getAutoNightModeManager()Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/app/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V

    .line 231
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    move-object v0, v1

    return-object v0
.end method

.method public isHandleNativeActionModesEnabled()Z
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z

    move v0, v1

    return v0
.end method

.method mapNightMode(I)I
    .locals 3

    .prologue
    .line 145
    move-object v0, p0

    move v1, p1

    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 153
    move v2, v1

    move v0, v2

    :goto_0
    return v0

    .line 147
    :sswitch_0
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V

    .line 148
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->getApplyableNightMode()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 151
    :sswitch_1
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 145
    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onCreate(Landroid/os/Bundle;)V

    .line 57
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    const/16 v3, -0x64

    if-ne v2, v3, :cond_0

    .line 60
    move-object v2, v0

    move-object v3, v1

    const-string v4, "appcompat:local_night_mode"

    const/16 v5, -0x64

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    .line 63
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onDestroy()V

    .line 177
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    if-eqz v1, :cond_0

    .line 178
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->cleanup()V

    .line 180
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 166
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    const/16 v3, -0x64

    if-eq v2, v3, :cond_0

    .line 168
    move-object v2, v1

    const-string v3, "appcompat:local_night_mode"

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onStart()V

    .line 108
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplV14;->applyDayNight()Z

    move-result v1

    .line 109
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onStop()V

    .line 116
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    if-eqz v1, :cond_0

    .line 117
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->cleanup()V

    .line 119
    :cond_0
    return-void
.end method

.method public setHandleNativeActionModesEnabled(Z)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z

    .line 75
    return-void
.end method

.method public setLocalNightMode(I)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 138
    const-string v2, "AppCompatDelegate"

    const-string v3, "setLocalNightMode() called with an unknown mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 128
    :pswitch_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 129
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    .line 130
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z

    if-eqz v2, :cond_0

    .line 133
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatDelegateImplV14;->applyDayNight()Z

    move-result v2

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/view/Window$Callback;)V

    move-object v0, v2

    return-object v0
.end method
