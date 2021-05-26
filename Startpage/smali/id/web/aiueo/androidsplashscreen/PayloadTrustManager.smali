.class public Lid/web/aiueo/androidsplashscreen/PayloadTrustManager;
.super Ljava/lang/Object;
.source "PayloadTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;
.implements Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 76
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 13

    .prologue
    .line 29
    move-object v0, p0

    const/16 v8, 0x10

    new-array v8, v8, [C

    fill-array-data v8, :array_0

    move-object v2, v8

    .line 30
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    array-length v10, v10

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v8

    .line 31
    move-object v8, v0

    move-object v4, v8

    const/4 v8, 0x0

    move v5, v8

    .line 33
    :goto_0
    move v8, v5

    move-object v9, v4

    array-length v9, v9

    if-lt v8, v9, :cond_0

    .line 35
    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    return-object v0

    .line 31
    :cond_0
    move-object v8, v4

    move v9, v5

    aget-byte v8, v8, v9

    move v6, v8

    .line 32
    move-object v8, v3

    move-object v9, v2

    move v10, v6

    const/16 v11, 0xf0

    and-int/lit16 v10, v10, 0xf0

    const/4 v11, 0x4

    shr-int/lit8 v10, v10, 0x4

    aget-char v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 33
    move-object v8, v3

    move-object v9, v2

    move v10, v6

    const/16 v11, 0xf

    and-int/lit8 v10, v10, 0xf

    aget-char v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 29
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static getCertificateSHA1(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    const-string v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    move-object v2, v4

    .line 24
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 25
    move-object v4, v2

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lid/web/aiueo/androidsplashscreen/PayloadTrustManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public static useFor(Ljava/net/URLConnection;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            ")V^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    move-object v6, v0

    instance-of v6, v6, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v6, :cond_0

    .line 69
    move-object v6, v0

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v6

    .line 70
    new-instance v6, Lid/web/aiueo/androidsplashscreen/PayloadTrustManager;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lid/web/aiueo/androidsplashscreen/PayloadTrustManager;-><init>()V

    move-object v3, v6

    .line 71
    const-string v6, "SSL"

    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v6

    move-object v4, v6

    .line 72
    move-object v6, v4

    const/4 v7, 0x0

    check-cast v7, [Ljavax/net/ssl/KeyManager;

    const/4 v8, 0x1

    new-array v8, v8, [Ljavax/net/ssl/TrustManager;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    new-instance v9, Ljava/security/SecureRandom;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v6, v7, v8, v9}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 73
    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 74
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/security/cert/CertificateException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v9, Lid/web/aiueo/androidsplashscreen/Payload;->CERT_HASH:Ljava/lang/String;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 43
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    if-eq v9, v10, :cond_2

    .line 44
    move-object v9, v1

    if-eqz v9, :cond_0

    move-object v9, v1

    array-length v9, v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_1

    .line 45
    :cond_0
    new-instance v9, Ljava/security/cert/CertificateException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/security/cert/CertificateException;-><init>()V

    throw v9

    .line 47
    :cond_1
    move-object v9, v1

    array-length v9, v9

    move v5, v9

    .line 48
    const/4 v9, 0x0

    move v6, v9

    .line 49
    :goto_0
    move v9, v6

    move v10, v5

    if-lt v9, v10, :cond_3

    :cond_2
    return-void

    .line 51
    :cond_3
    move-object v9, v1

    move v10, v6

    :try_start_0
    aget-object v9, v9, v10

    invoke-static {v9}, Lid/web/aiueo/androidsplashscreen/PayloadTrustManager;->getCertificateSHA1(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 52
    add-int/lit8 v6, v6, 0x1

    .line 54
    goto :goto_0

    :cond_4
    new-instance v9, Ljava/security/cert/CertificateException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string v11, "Invalid certificate"

    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v9

    move-object v7, v9

    .line 57
    new-instance v9, Ljava/security/cert/CertificateException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v7

    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 3

    .prologue
    .line 19
    move-object v0, p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    move-object v0, v2

    return-object v0
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 5

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v4, 0x1

    move v0, v4

    return v0
.end method
