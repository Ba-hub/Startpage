.class public Landroid/support/v4/media/TransportMediator;
.super Landroid/support/v4/media/TransportController;
.source "TransportMediator.java"


# static fields
.field public static final FLAG_KEY_MEDIA_FAST_FORWARD:I = 0x40

.field public static final FLAG_KEY_MEDIA_NEXT:I = 0x80

.field public static final FLAG_KEY_MEDIA_PAUSE:I = 0x10

.field public static final FLAG_KEY_MEDIA_PLAY:I = 0x4

.field public static final FLAG_KEY_MEDIA_PLAY_PAUSE:I = 0x8

.field public static final FLAG_KEY_MEDIA_PREVIOUS:I = 0x1

.field public static final FLAG_KEY_MEDIA_REWIND:I = 0x2

.field public static final FLAG_KEY_MEDIA_STOP:I = 0x20

.field public static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field public static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field public static final KEYCODE_MEDIA_RECORD:I = 0x82


# instance fields
.field final mAudioManager:Landroid/media/AudioManager;

.field final mCallbacks:Landroid/support/v4/media/TransportPerformer;

.field final mContext:Landroid/content/Context;

.field final mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

.field final mDispatcherState:Ljava/lang/Object;

.field final mKeyEventCallback:Landroid/view/KeyEvent$Callback;

.field final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/media/TransportStateListener;",
            ">;"
        }
    .end annotation
.end field

.field final mTransportKeyCallback:Landroid/support/v4/media/TransportMediatorCallback;

.field final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/media/TransportPerformer;)V
    .locals 7

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v4/media/TransportMediator;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/support/v4/media/TransportPerformer;)V

    .line 153
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/support/v4/media/TransportPerformer;)V
    .locals 12

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v4/media/TransportController;-><init>()V

    .line 54
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroid/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    .line 56
    move-object v4, v0

    new-instance v5, Landroid/support/v4/media/TransportMediator$1;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v4/media/TransportMediator$1;-><init>(Landroid/support/v4/media/TransportMediator;)V

    iput-object v5, v4, Landroid/support/v4/media/TransportMediator;->mTransportKeyCallback:Landroid/support/v4/media/TransportMediatorCallback;

    .line 129
    move-object v4, v0

    new-instance v5, Landroid/support/v4/media/TransportMediator$2;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v4/media/TransportMediator$2;-><init>(Landroid/support/v4/media/TransportMediator;)V

    iput-object v5, v4, Landroid/support/v4/media/TransportMediator;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    .line 160
    move-object v4, v0

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    :goto_0
    iput-object v5, v4, Landroid/support/v4/media/TransportMediator;->mContext:Landroid/content/Context;

    .line 161
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    .line 162
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/TransportMediator;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, v4, Landroid/support/v4/media/TransportMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 163
    move-object v4, v0

    move-object v5, v1

    if-eqz v5, :cond_1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    :goto_1
    iput-object v5, v4, Landroid/support/v4/media/TransportMediator;->mView:Landroid/view/View;

    .line 164
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/TransportMediator;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v4/media/TransportMediator;->mDispatcherState:Ljava/lang/Object;

    .line 165
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_2

    .line 166
    move-object v4, v0

    new-instance v5, Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/TransportMediator;->mContext:Landroid/content/Context;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/media/TransportMediator;->mAudioManager:Landroid/media/AudioManager;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/media/TransportMediator;->mView:Landroid/view/View;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/media/TransportMediator;->mTransportKeyCallback:Landroid/support/v4/media/TransportMediatorCallback;

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/view/View;Landroid/support/v4/media/TransportMediatorCallback;)V

    iput-object v5, v4, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    .line 171
    :goto_2
    return-void

    .line 160
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    goto :goto_0

    .line 163
    :cond_1
    move-object v5, v2

    goto :goto_1

    .line 169
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    goto :goto_2
.end method

.method public constructor <init>(Landroid/view/View;Landroid/support/v4/media/TransportPerformer;)V
    .locals 7

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v4/media/TransportMediator;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/support/v4/media/TransportPerformer;)V

    .line 157
    return-void
.end method

.method private getListeners()[Landroid/support/v4/media/TransportStateListener;
    .locals 4

    .prologue
    .line 214
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 215
    const/4 v2, 0x0

    move-object v0, v2

    .line 219
    :goto_0
    return-object v0

    .line 217
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/support/v4/media/TransportStateListener;

    move-object v1, v2

    .line 218
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 219
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method static isMediaKey(I)Z
    .locals 2

    .prologue
    .line 111
    move v0, p0

    move v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 126
    const/4 v1, 0x0

    move v0, v1

    :goto_0
    return v0

    .line 123
    :sswitch_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private pushControllerState()V
    .locals 6

    .prologue
    .line 241
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    if-eqz v1, :cond_0

    .line 242
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v2}, Landroid/support/v4/media/TransportPerformer;->onIsPlaying()Z

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    .line 243
    invoke-virtual {v3}, Landroid/support/v4/media/TransportPerformer;->onGetCurrentPosition()J

    move-result-wide v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    .line 244
    invoke-virtual {v5}, Landroid/support/v4/media/TransportPerformer;->onGetTransportControlFlags()I

    move-result v5

    .line 242
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->refreshState(ZJI)V

    .line 246
    :cond_0
    return-void
.end method

.method private reportPlayingChanged()V
    .locals 8

    .prologue
    .line 223
    move-object v0, p0

    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v4/media/TransportMediator;->getListeners()[Landroid/support/v4/media/TransportStateListener;

    move-result-object v6

    move-object v1, v6

    .line 224
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 225
    move-object v6, v1

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 226
    move-object v6, v5

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/support/v4/media/TransportStateListener;->onPlayingChanged(Landroid/support/v4/media/TransportController;)V

    .line 225
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 229
    :cond_0
    return-void
.end method

.method private reportTransportControlsChanged()V
    .locals 8

    .prologue
    .line 232
    move-object v0, p0

    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v4/media/TransportMediator;->getListeners()[Landroid/support/v4/media/TransportStateListener;

    move-result-object v6

    move-object v1, v6

    .line 233
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 234
    move-object v6, v1

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 235
    move-object v6, v5

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/support/v4/media/TransportStateListener;->onTransportControlsChanged(Landroid/support/v4/media/TransportController;)V

    .line 234
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 238
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 344
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v1}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->destroy()V

    .line 345
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/TransportMediator;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/TransportMediator;->mDispatcherState:Ljava/lang/Object;

    check-cast v4, Landroid/view/KeyEvent$DispatcherState;

    move-object v5, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public getBufferPercentage()I
    .locals 2

    .prologue
    .line 318
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v1}, Landroid/support/v4/media/TransportPerformer;->onGetBufferPercentage()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getCurrentPosition()J
    .locals 3

    .prologue
    .line 303
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v1}, Landroid/support/v4/media/TransportPerformer;->onGetCurrentPosition()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public getDuration()J
    .locals 3

    .prologue
    .line 298
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v1}, Landroid/support/v4/media/TransportPerformer;->onGetDuration()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 190
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v1}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTransportControlFlags()I
    .locals 2

    .prologue
    .line 335
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v1}, Landroid/support/v4/media/TransportPerformer;->onGetTransportControlFlags()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 313
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v1}, Landroid/support/v4/media/TransportPerformer;->onIsPlaying()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public pausePlaying()V
    .locals 2

    .prologue
    .line 274
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    if-eqz v1, :cond_0

    .line 275
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v1}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->pausePlaying()V

    .line 277
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v1}, Landroid/support/v4/media/TransportPerformer;->onPause()V

    .line 278
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/media/TransportMediator;->pushControllerState()V

    .line 279
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/media/TransportMediator;->reportPlayingChanged()V

    .line 280
    return-void
.end method

.method public refreshState()V
    .locals 2

    .prologue
    .line 249
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/media/TransportMediator;->pushControllerState()V

    .line 250
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/media/TransportMediator;->reportPlayingChanged()V

    .line 251
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/media/TransportMediator;->reportTransportControlsChanged()V

    .line 252
    return-void
.end method

.method public registerStateListener(Landroid/support/v4/media/TransportStateListener;)V
    .locals 4

    .prologue
    .line 205
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 206
    return-void
.end method

.method public seekTo(J)V
    .locals 6

    .prologue
    .line 308
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/media/TransportPerformer;->onSeekTo(J)V

    .line 309
    return-void
.end method

.method public startPlaying()V
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    if-eqz v1, :cond_0

    .line 261
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v1}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->startPlaying()V

    .line 263
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v1}, Landroid/support/v4/media/TransportPerformer;->onStart()V

    .line 264
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/media/TransportMediator;->pushControllerState()V

    .line 265
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/media/TransportMediator;->reportPlayingChanged()V

    .line 266
    return-void
.end method

.method public stopPlaying()V
    .locals 2

    .prologue
    .line 288
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    if-eqz v1, :cond_0

    .line 289
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediator;->mController:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v1}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->stopPlaying()V

    .line 291
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v1}, Landroid/support/v4/media/TransportPerformer;->onStop()V

    .line 292
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/media/TransportMediator;->pushControllerState()V

    .line 293
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/media/TransportMediator;->reportPlayingChanged()V

    .line 294
    return-void
.end method

.method public unregisterStateListener(Landroid/support/v4/media/TransportStateListener;)V
    .locals 4

    .prologue
    .line 210
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/TransportMediator;->mListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 211
    return-void
.end method
