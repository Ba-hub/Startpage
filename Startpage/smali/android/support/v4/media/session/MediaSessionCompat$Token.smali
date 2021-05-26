.class public final Landroid/support/v4/media/session/MediaSessionCompat$Token;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Token"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$Token;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mInner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 988
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 912
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 913
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    .line 914
    return-void
.end method

.method public static fromToken(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 5

    .prologue
    .line 928
    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 929
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    .line 931
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->verifyToken(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 936
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 958
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 959
    const/4 v3, 0x1

    move v0, v3

    .line 972
    :goto_0
    return v0

    .line 961
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-nez v3, :cond_1

    .line 962
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 965
    :cond_1
    move-object v3, v1

    check-cast v3, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-object v2, v3

    .line 966
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 967
    move-object v3, v2

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 969
    :cond_3
    move-object v3, v2

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 970
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 972
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getToken()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 985
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 950
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 951
    const/4 v1, 0x0

    move v0, v1

    .line 953
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    .line 941
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 942
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    check-cast v4, Landroid/os/Parcelable;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 946
    :goto_0
    return-void

    .line 944
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0
.end method
