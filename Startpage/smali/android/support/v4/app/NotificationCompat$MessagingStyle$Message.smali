.class public final Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$MessagingStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field static final KEY_DATA_MIME_TYPE:Ljava/lang/String; = "type"

.field static final KEY_DATA_URI:Ljava/lang/String; = "uri"

.field static final KEY_SENDER:Ljava/lang/String; = "sender"

.field static final KEY_TEXT:Ljava/lang/String; = "text"

.field static final KEY_TIMESTAMP:Ljava/lang/String; = "time"


# instance fields
.field private mDataMimeType:Ljava/lang/String;

.field private mDataUri:Landroid/net/Uri;

.field private final mSender:Ljava/lang/CharSequence;

.field private final mText:Ljava/lang/CharSequence;

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V
    .locals 8

    .prologue
    .line 2110
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 2111
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    .line 2112
    move-object v5, v0

    move-wide v6, v2

    iput-wide v6, v5, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    .line 2113
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    .line 2114
    return-void
.end method

.method static getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;",
            ">;)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 2205
    move-object v0, p0

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Bundle;

    move-object v1, v4

    .line 2206
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v2, v4

    .line 2207
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 2208
    move-object v4, v1

    move v5, v3

    move-object v6, v0

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    invoke-direct {v6}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2207
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2210
    :cond_0
    move-object v4, v1

    move-object v0, v4

    return-object v0
.end method

.method static getMessageFromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .locals 10

    .prologue
    .line 2228
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    const-string v3, "text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    const-string v3, "time"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2229
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 2242
    :goto_0
    return-object v0

    .line 2231
    :cond_1
    new-instance v2, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    const-string v5, "text"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v5, v0

    const-string v6, "time"

    .line 2232
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object v7, v0

    const-string v8, "sender"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    move-object v1, v2

    .line 2233
    move-object v2, v0

    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    const-string v3, "uri"

    .line 2234
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2236
    move-object v2, v1

    move-object v3, v0

    const-string v4, "type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    const-string v5, "uri"

    .line 2237
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 2236
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2239
    :cond_2
    move-object v2, v1

    move-object v0, v2

    goto :goto_0

    .line 2241
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2242
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method static getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2214
    move-object v0, p0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v4

    .line 2215
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 2216
    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    instance-of v4, v4, Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 2217
    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    check-cast v4, Landroid/os/Bundle;

    invoke-static {v4}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getMessageFromBundle(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    move-result-object v4

    move-object v3, v4

    .line 2218
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 2219
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 2215
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2223
    :cond_1
    move-object v4, v1

    move-object v0, v4

    return-object v0
.end method

.method private toBundle()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 2187
    move-object v0, p0

    new-instance v2, Landroid/os/Bundle;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v1, v2

    .line 2188
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 2189
    move-object v2, v1

    const-string v3, "text"

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2191
    :cond_0
    move-object v2, v1

    const-string v3, "time"

    move-object v4, v0

    iget-wide v4, v4, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2192
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 2193
    move-object v2, v1

    const-string v3, "sender"

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2195
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2196
    move-object v2, v1

    const-string v3, "type"

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    .line 2199
    move-object v2, v1

    const-string v3, "uri"

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2201
    :cond_3
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public getDataMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2175
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 2183
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    move-object v0, v1

    return-object v0
.end method

.method public getSender()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 2168
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 2154
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getTimestamp()J
    .locals 3

    .prologue
    .line 2161
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    move-wide v0, v1

    return-wide v0
.end method

.method public setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .locals 5

    .prologue
    .line 2144
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    .line 2145
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    .line 2146
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method
