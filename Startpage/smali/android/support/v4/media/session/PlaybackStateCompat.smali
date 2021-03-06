.class public final Landroid/support/v4/media/session/PlaybackStateCompat;
.super Ljava/lang/Object;
.source "PlaybackStateCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/PlaybackStateCompat$Builder;,
        Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;,
        Landroid/support/v4/media/session/PlaybackStateCompat$State;,
        Landroid/support/v4/media/session/PlaybackStateCompat$MediaKeyAction;,
        Landroid/support/v4/media/session/PlaybackStateCompat$Actions;
    }
.end annotation


# static fields
.field public static final ACTION_FAST_FORWARD:J = 0x40L

.field public static final ACTION_PAUSE:J = 0x2L

.field public static final ACTION_PLAY:J = 0x4L

.field public static final ACTION_PLAY_FROM_MEDIA_ID:J = 0x400L

.field public static final ACTION_PLAY_FROM_SEARCH:J = 0x800L

.field public static final ACTION_PLAY_FROM_URI:J = 0x2000L

.field public static final ACTION_PLAY_PAUSE:J = 0x200L

.field public static final ACTION_PREPARE:J = 0x4000L

.field public static final ACTION_PREPARE_FROM_MEDIA_ID:J = 0x8000L

.field public static final ACTION_PREPARE_FROM_SEARCH:J = 0x10000L

.field public static final ACTION_PREPARE_FROM_URI:J = 0x20000L

.field public static final ACTION_REWIND:J = 0x8L

.field public static final ACTION_SEEK_TO:J = 0x100L

.field public static final ACTION_SET_RATING:J = 0x80L

.field public static final ACTION_SKIP_TO_NEXT:J = 0x20L

.field public static final ACTION_SKIP_TO_PREVIOUS:J = 0x10L

.field public static final ACTION_SKIP_TO_QUEUE_ITEM:J = 0x1000L

.field public static final ACTION_STOP:J = 0x1L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/session/PlaybackStateCompat;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field private static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field public static final PLAYBACK_POSITION_UNKNOWN:J = -0x1L

.field public static final STATE_BUFFERING:I = 0x6

.field public static final STATE_CONNECTING:I = 0x8

.field public static final STATE_ERROR:I = 0x7

.field public static final STATE_FAST_FORWARDING:I = 0x4

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_REWINDING:I = 0x5

.field public static final STATE_SKIPPING_TO_NEXT:I = 0xa

.field public static final STATE_SKIPPING_TO_PREVIOUS:I = 0x9

.field public static final STATE_SKIPPING_TO_QUEUE_ITEM:I = 0xb

.field public static final STATE_STOPPED:I = 0x1


# instance fields
.field private final mActions:J

.field private final mActiveItemId:J

.field private final mBufferedPosition:J

.field private mCustomActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrorMessage:Ljava/lang/CharSequence;

.field private final mExtras:Landroid/os/Bundle;

.field private final mPosition:J

.field private final mSpeed:F

.field private final mState:I

.field private mStateObj:Ljava/lang/Object;

.field private final mUpdateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 612
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJFJ",
            "Ljava/lang/CharSequence;",
            "J",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;J",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 356
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    move-wide/from16 v13, p10

    move-object/from16 v15, p12

    move-wide/from16 v16, p13

    move-object/from16 v18, p15

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    .line 357
    move-object/from16 v19, v3

    move/from16 v20, v4

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    .line 358
    move-object/from16 v19, v3

    move-wide/from16 v20, v5

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    .line 359
    move-object/from16 v19, v3

    move-wide/from16 v20, v7

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    .line 360
    move-object/from16 v19, v3

    move/from16 v20, v9

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    .line 361
    move-object/from16 v19, v3

    move-wide/from16 v20, v10

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    .line 362
    move-object/from16 v19, v3

    move-object/from16 v20, v12

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    .line 363
    move-object/from16 v19, v3

    move-wide/from16 v20, v13

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    .line 364
    move-object/from16 v19, v3

    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v23, v20

    move-object/from16 v20, v23

    move-object/from16 v21, v23

    move-object/from16 v22, v15

    invoke-direct/range {v21 .. v22}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    .line 365
    move-object/from16 v19, v3

    move-wide/from16 v20, v16

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    .line 366
    move-object/from16 v19, v3

    move-object/from16 v20, v18

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    .line 367
    return-void
.end method

.method synthetic constructor <init>(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;Landroid/support/v4/media/session/PlaybackStateCompat$1;)V
    .locals 33

    .prologue
    .line 39
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    move-wide/from16 v13, p13

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, v0

    move/from16 v18, v1

    move-wide/from16 v19, v2

    move-wide/from16 v21, v4

    move/from16 v23, v6

    move-wide/from16 v24, v7

    move-object/from16 v26, v9

    move-wide/from16 v27, v10

    move-object/from16 v29, v12

    move-wide/from16 v30, v13

    move-object/from16 v32, v15

    invoke-direct/range {v17 .. v32}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 369
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 370
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    .line 371
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    .line 372
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    .line 373
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    .line 374
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    .line 375
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    .line 376
    move-object v2, v0

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    .line 377
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    .line 378
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    .line 379
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    .line 380
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/v4/media/session/PlaybackStateCompat$1;)V
    .locals 5

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/util/List;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 3

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    move-wide v0, v1

    return-wide v0
.end method

.method static synthetic access$1200(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/media/session/PlaybackStateCompat;)I
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    move v0, v1

    return v0
.end method

.method static synthetic access$400(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 3

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    move-wide v0, v1

    return-wide v0
.end method

.method static synthetic access$500(Landroid/support/v4/media/session/PlaybackStateCompat;)F
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    move v0, v1

    return v0
.end method

.method static synthetic access$600(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 3

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    move-wide v0, v1

    return-wide v0
.end method

.method static synthetic access$700(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 3

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    move-wide v0, v1

    return-wide v0
.end method

.method static synthetic access$800(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 3

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    move-wide v0, v1

    return-wide v0
.end method

.method static synthetic access$900(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public static fromPlaybackState(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 23

    .prologue
    .line 550
    move-object/from16 v0, p0

    move-object v5, v0

    if-eqz v5, :cond_0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_1

    .line 551
    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    .line 577
    :goto_0
    return-object v0

    .line 554
    :cond_1
    move-object v5, v0

    invoke-static {v5}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getCustomActions(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v1, v5

    .line 555
    const/4 v5, 0x0

    move-object v2, v5

    .line 556
    move-object v5, v1

    if-eqz v5, :cond_2

    .line 557
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v22, v5

    move-object/from16 v5, v22

    move-object/from16 v6, v22

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v5

    .line 558
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 559
    move-object v5, v2

    move-object v6, v4

    invoke-static {v6}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->fromCustomAction(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 560
    goto :goto_1

    .line 562
    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-lt v5, v6, :cond_3

    move-object v5, v0

    .line 563
    invoke-static {v5}, Landroid/support/v4/media/session/PlaybackStateCompatApi22;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v5

    :goto_2
    move-object v3, v5

    .line 565
    new-instance v5, Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object/from16 v22, v5

    move-object/from16 v5, v22

    move-object/from16 v6, v22

    move-object v7, v0

    .line 566
    invoke-static {v7}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getState(Ljava/lang/Object;)I

    move-result v7

    move-object v8, v0

    .line 567
    invoke-static {v8}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getPosition(Ljava/lang/Object;)J

    move-result-wide v8

    move-object v10, v0

    .line 568
    invoke-static {v10}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getBufferedPosition(Ljava/lang/Object;)J

    move-result-wide v10

    move-object v12, v0

    .line 569
    invoke-static {v12}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getPlaybackSpeed(Ljava/lang/Object;)F

    move-result v12

    move-object v13, v0

    .line 570
    invoke-static {v13}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getActions(Ljava/lang/Object;)J

    move-result-wide v13

    move-object v15, v0

    .line 571
    invoke-static {v15}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getErrorMessage(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v16, v0

    .line 572
    invoke-static/range {v16 .. v16}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getLastPositionUpdateTime(Ljava/lang/Object;)J

    move-result-wide v16

    move-object/from16 v18, v2

    move-object/from16 v19, v0

    .line 574
    invoke-static/range {v19 .. v19}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getActiveQueueItemId(Ljava/lang/Object;)J

    move-result-wide v19

    move-object/from16 v21, v3

    invoke-direct/range {v6 .. v21}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    move-object v4, v5

    .line 576
    move-object v5, v4

    move-object v6, v0

    iput-object v6, v5, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    .line 577
    move-object v5, v4

    move-object v0, v5

    goto/16 :goto_0

    .line 563
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static toKeyCode(J)I
    .locals 6

    .prologue
    .line 320
    move-wide v0, p0

    move-wide v2, v0

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 321
    const/16 v2, 0x7e

    move v0, v2

    .line 337
    :goto_0
    return v0

    .line 322
    :cond_0
    move-wide v2, v0

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 323
    const/16 v2, 0x7f

    move v0, v2

    goto :goto_0

    .line 324
    :cond_1
    move-wide v2, v0

    const-wide/16 v4, 0x20

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 325
    const/16 v2, 0x57

    move v0, v2

    goto :goto_0

    .line 326
    :cond_2
    move-wide v2, v0

    const-wide/16 v4, 0x10

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 327
    const/16 v2, 0x58

    move v0, v2

    goto :goto_0

    .line 328
    :cond_3
    move-wide v2, v0

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 329
    const/16 v2, 0x56

    move v0, v2

    goto :goto_0

    .line 330
    :cond_4
    move-wide v2, v0

    const-wide/16 v4, 0x40

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 331
    const/16 v2, 0x5a

    move v0, v2

    goto :goto_0

    .line 332
    :cond_5
    move-wide v2, v0

    const-wide/16 v4, 0x8

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 333
    const/16 v2, 0x59

    move v0, v2

    goto :goto_0

    .line 334
    :cond_6
    move-wide v2, v0

    const-wide/16 v4, 0x200

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 335
    const/16 v2, 0x55

    move v0, v2

    goto :goto_0

    .line 337
    :cond_7
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 400
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getActions()J
    .locals 3

    .prologue
    .line 491
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    move-wide v0, v1

    return-wide v0
.end method

.method public getActiveQueueItemId()J
    .locals 3

    .prologue
    .line 528
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    move-wide v0, v1

    return-wide v0
.end method

.method public getBufferedPosition()J
    .locals 3

    .prologue
    .line 451
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    move-wide v0, v1

    return-wide v0
.end method

.method public getCustomActions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 506
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 537
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method public getLastPositionUpdateTime()J
    .locals 3

    .prologue
    .line 516
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    move-wide v0, v1

    return-wide v0
.end method

.method public getPlaybackSpeed()F
    .locals 2

    .prologue
    .line 462
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    move v0, v1

    return v0
.end method

.method public getPlaybackState()Ljava/lang/Object;
    .locals 23

    .prologue
    .line 589
    move-object/from16 v2, p0

    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    if-nez v6, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v6, v7, :cond_1

    .line 590
    :cond_0
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    move-object v2, v6

    .line 609
    :goto_0
    return-object v2

    .line 593
    :cond_1
    const/4 v6, 0x0

    move-object v3, v6

    .line 594
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 595
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v22, v6

    move-object/from16 v6, v22

    move-object/from16 v7, v22

    move-object v8, v2

    iget-object v8, v8, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v6

    .line 596
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-object v5, v6

    .line 597
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getCustomAction()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 598
    goto :goto_1

    .line 600
    :cond_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x16

    if-lt v6, v7, :cond_3

    .line 601
    move-object v6, v2

    move-object v7, v2

    iget v7, v7, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    move-object v8, v2

    iget-wide v8, v8, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    move-object v10, v2

    iget-wide v10, v10, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    move-object v12, v2

    iget v12, v12, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    move-object v13, v2

    iget-wide v13, v13, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    move-object v15, v2

    iget-object v15, v15, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    move-wide/from16 v19, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    move-object/from16 v21, v0

    invoke-static/range {v7 .. v21}, Landroid/support/v4/media/session/PlaybackStateCompatApi22;->newInstance(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    .line 609
    :goto_2
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    move-object v2, v6

    goto :goto_0

    .line 605
    :cond_3
    move-object v6, v2

    move-object v7, v2

    iget v7, v7, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    move-object v8, v2

    iget-wide v8, v8, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    move-object v10, v2

    iget-wide v10, v10, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    move-object v12, v2

    iget v12, v12, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    move-object v13, v2

    iget-wide v13, v13, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    move-object v15, v2

    iget-object v15, v15, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    move-wide/from16 v19, v0

    invoke-static/range {v7 .. v20}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->newInstance(IJJFJLjava/lang/CharSequence;JLjava/util/List;J)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    goto :goto_2
.end method

.method public getPosition()J
    .locals 3

    .prologue
    .line 442
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    move-wide v0, v1

    return-wide v0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 435
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    move v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 384
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "PlaybackState {"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 385
    move-object v2, v1

    const-string v3, "state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 386
    move-object v2, v1

    const-string v3, ", position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-wide v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 387
    move-object v2, v1

    const-string v3, ", buffered position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-wide v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 388
    move-object v2, v1

    const-string v3, ", speed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 389
    move-object v2, v1

    const-string v3, ", updated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-wide v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 390
    move-object v2, v1

    const-string v3, ", actions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-wide v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 391
    move-object v2, v1

    const-string v3, ", error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 392
    move-object v2, v1

    const-string v3, ", custom actions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 393
    move-object v2, v1

    const-string v3, ", active item id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-wide v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 394
    move-object v2, v1

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 395
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 407
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 408
    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 409
    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 410
    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 411
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    move-object v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 412
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 413
    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 414
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 415
    return-void
.end method
