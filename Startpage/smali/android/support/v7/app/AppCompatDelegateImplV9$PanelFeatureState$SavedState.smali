.class Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field featureId:I

.field isOpen:Z

.field menuState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2076
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState$1;-><init>()V

    .line 2077
    invoke-static {v0}, Landroid/support/v4/os/ParcelableCompat;->newCreator(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2076
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 2044
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9$1;)V
    .locals 3

    .prologue
    .line 2044
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;-><init>()V

    return-void
.end method

.method static synthetic access$1300(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
    .locals 4

    .prologue
    .line 2044
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
    .locals 7

    .prologue
    .line 2065
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;-><init>()V

    move-object v2, v3

    .line 2066
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->featureId:I

    .line 2067
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->isOpen:Z

    .line 2069
    move-object v3, v2

    iget-boolean v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v3, :cond_0

    .line 2070
    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 2073
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 2067
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 2051
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    .line 2056
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->featureId:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2057
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2059
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v3, :cond_0

    .line 2060
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2062
    :cond_0
    return-void

    .line 2057
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
