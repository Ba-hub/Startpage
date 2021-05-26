.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
.super Landroid/os/Handler;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# static fields
.field private static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field private static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field private static final MSG_ADJUST_VOLUME:I = 0x2

.field private static final MSG_COMMAND:I = 0x1

.field private static final MSG_CUSTOM_ACTION:I = 0x14

.field private static final MSG_FAST_FORWARD:I = 0x10

.field private static final MSG_MEDIA_BUTTON:I = 0x15

.field private static final MSG_NEXT:I = 0xe

.field private static final MSG_PAUSE:I = 0xc

.field private static final MSG_PLAY:I = 0x7

.field private static final MSG_PLAY_MEDIA_ID:I = 0x8

.field private static final MSG_PLAY_SEARCH:I = 0x9

.field private static final MSG_PLAY_URI:I = 0xa

.field private static final MSG_PREPARE:I = 0x3

.field private static final MSG_PREPARE_MEDIA_ID:I = 0x4

.field private static final MSG_PREPARE_SEARCH:I = 0x5

.field private static final MSG_PREPARE_URI:I = 0x6

.field private static final MSG_PREVIOUS:I = 0xf

.field private static final MSG_RATE:I = 0x13

.field private static final MSG_REWIND:I = 0x11

.field private static final MSG_SEEK_TO:I = 0x12

.field private static final MSG_SET_VOLUME:I = 0x16

.field private static final MSG_SKIP_TO_ITEM:I = 0xb

.field private static final MSG_STOP:I = 0xd


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/os/Looper;)V
    .locals 5

    .prologue
    .line 2081
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .line 2082
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2083
    return-void
.end method

.method private onMediaButtonEvent(Landroid/view/KeyEvent;Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
    .locals 12

    .prologue
    .line 2187
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, v1

    if-eqz v8, :cond_0

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-eqz v8, :cond_1

    .line 2244
    :cond_0
    :goto_0
    return-void

    .line 2190
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v8}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$3000(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v8

    if-nez v8, :cond_3

    const-wide/16 v8, 0x0

    :goto_1
    move-wide v3, v8

    .line 2191
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 2244
    :cond_2
    :goto_2
    goto :goto_0

    .line 2190
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v8}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$3000(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v8

    goto :goto_1

    .line 2194
    :sswitch_0
    move-wide v8, v3

    const-wide/16 v10, 0x4

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 2195
    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    goto :goto_2

    .line 2200
    :sswitch_1
    move-wide v8, v3

    const-wide/16 v10, 0x2

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 2201
    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    goto :goto_2

    .line 2205
    :sswitch_2
    move-wide v8, v3

    const-wide/16 v10, 0x20

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 2206
    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    goto :goto_2

    .line 2210
    :sswitch_3
    move-wide v8, v3

    const-wide/16 v10, 0x10

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 2211
    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    goto :goto_2

    .line 2215
    :sswitch_4
    move-wide v8, v3

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 2216
    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    goto :goto_2

    .line 2220
    :sswitch_5
    move-wide v8, v3

    const-wide/16 v10, 0x40

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 2221
    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    goto :goto_2

    .line 2225
    :sswitch_6
    move-wide v8, v3

    const-wide/16 v10, 0x8

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 2226
    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    goto :goto_2

    .line 2231
    :sswitch_7
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v8}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$3000(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v8

    if-eqz v8, :cond_4

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .line 2232
    invoke-static {v8}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$3000(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    const/4 v8, 0x1

    :goto_3
    move v5, v8

    .line 2233
    move-wide v8, v3

    const-wide/16 v10, 0x204

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    :goto_4
    move v6, v8

    .line 2235
    move-wide v8, v3

    const-wide/16 v10, 0x202

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    :goto_5
    move v7, v8

    .line 2237
    move v8, v5

    if-eqz v8, :cond_7

    move v8, v7

    if-eqz v8, :cond_7

    .line 2238
    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    goto/16 :goto_2

    .line 2232
    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 2233
    :cond_5
    const/4 v8, 0x0

    goto :goto_4

    .line 2235
    :cond_6
    const/4 v8, 0x0

    goto :goto_5

    .line 2239
    :cond_7
    move v8, v5

    if-nez v8, :cond_2

    move v8, v6

    if-eqz v8, :cond_2

    .line 2240
    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    goto/16 :goto_2

    .line 2191
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_7
        0x55 -> :sswitch_7
        0x56 -> :sswitch_4
        0x57 -> :sswitch_2
        0x58 -> :sswitch_3
        0x59 -> :sswitch_6
        0x5a -> :sswitch_5
        0x7e -> :sswitch_0
        0x7f -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .prologue
    .line 2105
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v6}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2900(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v6

    move-object v2, v6

    .line 2106
    move-object v6, v2

    if-nez v6, :cond_0

    .line 2184
    :goto_0
    return-void

    .line 2109
    :cond_0
    move-object v6, v1

    iget v6, v6, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 2184
    :cond_1
    :goto_1
    goto :goto_0

    .line 2111
    :pswitch_0
    move-object v6, v1

    iget-object v6, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;

    move-object v3, v6

    .line 2112
    move-object v6, v2

    move-object v7, v3

    iget-object v7, v7, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->command:Ljava/lang/String;

    move-object v8, v3

    iget-object v8, v8, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->extras:Landroid/os/Bundle;

    move-object v9, v3

    iget-object v9, v9, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->stub:Landroid/os/ResultReceiver;

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 2113
    goto :goto_1

    .line 2115
    :pswitch_1
    move-object v6, v1

    iget-object v6, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/view/KeyEvent;

    move-object v4, v6

    .line 2116
    new-instance v6, Landroid/content/Intent;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 2117
    move-object v6, v5

    const-string v7, "android.intent.extra.KEY_EVENT"

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v6

    .line 2119
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2120
    move-object v6, v0

    move-object v7, v4

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->onMediaButtonEvent(Landroid/view/KeyEvent;Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    goto :goto_1

    .line 2124
    :pswitch_2
    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepare()V

    .line 2125
    goto :goto_1

    .line 2127
    :pswitch_3
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    move-object v8, v1

    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2128
    goto :goto_1

    .line 2130
    :pswitch_4
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    move-object v8, v1

    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2131
    goto :goto_1

    .line 2133
    :pswitch_5
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/Uri;

    move-object v8, v1

    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 2134
    goto :goto_1

    .line 2136
    :pswitch_6
    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    .line 2137
    goto :goto_1

    .line 2139
    :pswitch_7
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    move-object v8, v1

    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2140
    goto/16 :goto_1

    .line 2142
    :pswitch_8
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    move-object v8, v1

    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2143
    goto/16 :goto_1

    .line 2145
    :pswitch_9
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/Uri;

    move-object v8, v1

    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 2146
    goto/16 :goto_1

    .line 2148
    :pswitch_a
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToQueueItem(J)V

    .line 2149
    goto/16 :goto_1

    .line 2151
    :pswitch_b
    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    .line 2152
    goto/16 :goto_1

    .line 2154
    :pswitch_c
    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    .line 2155
    goto/16 :goto_1

    .line 2157
    :pswitch_d
    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    .line 2158
    goto/16 :goto_1

    .line 2160
    :pswitch_e
    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    .line 2161
    goto/16 :goto_1

    .line 2163
    :pswitch_f
    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    .line 2164
    goto/16 :goto_1

    .line 2166
    :pswitch_10
    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    .line 2167
    goto/16 :goto_1

    .line 2169
    :pswitch_11
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSeekTo(J)V

    .line 2170
    goto/16 :goto_1

    .line 2172
    :pswitch_12
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetRating(Landroid/support/v4/media/RatingCompat;)V

    .line 2173
    goto/16 :goto_1

    .line 2175
    :pswitch_13
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    move-object v8, v1

    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2176
    goto/16 :goto_1

    .line 2178
    :pswitch_14
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    move-object v7, v1

    iget-object v7, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$1900(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V

    .line 2179
    goto/16 :goto_1

    .line 2181
    :pswitch_15
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    move-object v7, v1

    iget-object v7, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2000(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V

    goto/16 :goto_1

    .line 2109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_14
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_1
        :pswitch_15
    .end packed-switch
.end method

.method public post(I)V
    .locals 5

    .prologue
    .line 2096
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;)V

    .line 2097
    return-void
.end method

.method public post(ILjava/lang/Object;)V
    .locals 6

    .prologue
    .line 2092
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2093
    return-void
.end method

.method public post(ILjava/lang/Object;I)V
    .locals 9

    .prologue
    .line 2100
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v3

    const/4 v7, 0x0

    move-object v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2101
    return-void
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 2086
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v4, v5

    .line 2087
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2088
    move-object v5, v4

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 2089
    return-void
.end method
