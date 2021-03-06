.class public Landroid/support/v4/app/NotificationCompat$Action;
.super Landroid/support/v4/app/NotificationCompatBase$Action;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;,
        Landroid/support/v4/app/NotificationCompat$Action$Extender;,
        Landroid/support/v4/app/NotificationCompat$Action$Builder;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroid/support/v4/app/NotificationCompatBase$Action$Factory;


# instance fields
.field public actionIntent:Landroid/app/PendingIntent;

.field public icon:I

.field private mAllowGeneratedReplies:Z

.field private final mExtras:Landroid/os/Bundle;

.field private final mRemoteInputs:[Landroid/support/v4/app/RemoteInput;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2761
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$Action$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompat$Action;->FACTORY:Landroid/support/v4/app/NotificationCompatBase$Action$Factory;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 12

    .prologue
    .line 2338
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    new-instance v8, Landroid/os/Bundle;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;Z)V

    .line 2339
    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;Z)V
    .locals 11

    .prologue
    .line 2342
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v4/app/NotificationCompatBase$Action;-><init>()V

    .line 2321
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v4/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    .line 2343
    move-object v7, v0

    move v8, v1

    iput v8, v7, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    .line 2344
    move-object v7, v0

    move-object v8, v2

    invoke-static {v8}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 2345
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 2346
    move-object v7, v0

    move-object v8, v4

    if-eqz v8, :cond_0

    move-object v8, v4

    :goto_0
    iput-object v8, v7, Landroid/support/v4/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    .line 2347
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroid/support/v4/app/NotificationCompat$Action;->mRemoteInputs:[Landroid/support/v4/app/RemoteInput;

    .line 2348
    move-object v7, v0

    move v8, v6

    iput-boolean v8, v7, Landroid/support/v4/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    .line 2349
    return-void

    .line 2346
    :cond_0
    new-instance v8, Landroid/os/Bundle;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method synthetic constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;ZLandroid/support/v4/app/NotificationCompat$1;)V
    .locals 15

    .prologue
    .line 2318
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    move v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move v14, v6

    invoke-direct/range {v8 .. v14}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 2318
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public getActionIntent()Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 2363
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    move-object v0, v1

    return-object v0
.end method

.method public getAllowGeneratedReplies()Z
    .locals 2

    .prologue
    .line 2380
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    move v0, v1

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 2371
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method public getIcon()I
    .locals 2

    .prologue
    .line 2353
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    move v0, v1

    return v0
.end method

.method public getRemoteInputs()[Landroid/support/v4/app/RemoteInput;
    .locals 2

    .prologue
    .line 2389
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$Action;->mRemoteInputs:[Landroid/support/v4/app/RemoteInput;

    move-object v0, v1

    return-object v0
.end method

.method public bridge synthetic getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .locals 2

    .prologue
    .line 2318
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 2358
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method
