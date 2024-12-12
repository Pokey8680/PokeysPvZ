.class public Lcom/ea/nimble/EASPDataLoader;
.super Ljava/lang/Object;
.source "EASPDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/EASPDataLoader$LogEvent;,
        Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static deleteDatFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    const/4 v1, 0x1

    .line 170
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_0
.end method

.method public static getTrackingDatFilePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 316
    const-string v0, ""

    .line 318
    .local v0, "basePath":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 319
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user.dir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "doc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "EASP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Tracking"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tracking.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 327
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static loadDatFile(Ljava/lang/String;)Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
    .locals 26
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_1

    .line 185
    :cond_0
    const-string v19, "Legacy"

    const-string v20, "Empty path passed to loadLegacyEASPDatFile"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    new-instance v19, Ljava/lang/NullPointerException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/NullPointerException;-><init>()V

    throw v19

    .line 189
    :cond_1
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-nez v19, :cond_3

    .line 192
    :cond_2
    const-string v19, "Legacy"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Couldn\'t find EASP data file, "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    new-instance v19, Ljava/io/FileNotFoundException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Non-existent or empty file, "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 197
    :cond_3
    const-string v19, "Legacy"

    const-string v20, "Attempt to read EASP data file, %s, size %d."

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object p0, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v19 .. v21}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    const/4 v13, 0x0

    .line 200
    .local v13, "fileStream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 201
    .local v4, "buffer":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 205
    .local v11, "easpData":Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v13    # "fileStream":Ljava/io/FileInputStream;
    .local v14, "fileStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    .end local v4    # "buffer":Ljava/io/InputStream;
    .local v5, "buffer":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v6, v0, [B

    .line 209
    .local v6, "byteArray":[B
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v17

    .line 213
    .local v17, "readLength":I
    const-string v19, "AES/CBC/NoPadding"

    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 216
    .local v7, "cipher":Ljavax/crypto/Cipher;
    const/16 v19, 0x20

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    .line 252
    .local v16, "keyByteArray":[B
    new-instance v15, Ljavax/crypto/spec/SecretKeySpec;

    const-string v19, "AES"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 257
    .local v15, "key":Ljavax/crypto/SecretKey;
    const/16 v19, 0x2

    new-instance v20, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v21, 0x8

    const/16 v22, 0x10

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v6, v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v15, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 263
    const/16 v19, 0x18

    add-int/lit8 v20, v17, -0x18

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v6, v0, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v8

    .line 268
    .local v8, "decodedArray":[B
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 269
    .local v9, "decodedByteBuffer":Ljava/nio/ByteBuffer;
    sget-object v19, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 272
    invoke-static {v9}, Lcom/ea/nimble/EASPDataLoader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v18

    .line 275
    .local v18, "versionString":Ljava/lang/String;
    new-instance v11, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;

    .end local v11    # "easpData":Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v19

    sget-object v20, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v11, v0, v1}, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 288
    .restart local v11    # "easpData":Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
    if-eqz v14, :cond_4

    .line 290
    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 300
    :cond_4
    :goto_0
    if-eqz v5, :cond_5

    .line 302
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 311
    :cond_5
    :goto_1
    return-object v11

    .line 293
    :catch_0
    move-exception v10

    .line 295
    .local v10, "e":Ljava/io/IOException;
    const-string v19, "Legacy"

    const-string v20, "Exception closing file stream, for file, %s."

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object p0, v21, v22

    invoke-static/range {v19 .. v21}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 305
    .end local v10    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v10

    .line 307
    .local v10, "e":Ljava/lang/Exception;
    const-string v19, "Legacy"

    const-string v20, "Exception closing buffer, for file, %s."

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object p0, v21, v22

    invoke-static/range {v19 .. v21}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 277
    .end local v5    # "buffer":Ljava/io/InputStream;
    .end local v6    # "byteArray":[B
    .end local v7    # "cipher":Ljavax/crypto/Cipher;
    .end local v8    # "decodedArray":[B
    .end local v9    # "decodedByteBuffer":Ljava/nio/ByteBuffer;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v14    # "fileStream":Ljava/io/FileInputStream;
    .end local v15    # "key":Ljavax/crypto/SecretKey;
    .end local v16    # "keyByteArray":[B
    .end local v17    # "readLength":I
    .end local v18    # "versionString":Ljava/lang/String;
    .restart local v4    # "buffer":Ljava/io/InputStream;
    .restart local v13    # "fileStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v10

    .line 279
    .end local v11    # "easpData":Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
    .restart local v10    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v19, "Legacy"

    const-string v20, "Exception reading EASP data file, %s: %s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object p0, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v19 .. v21}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 286
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    .line 288
    :goto_3
    if-eqz v13, :cond_6

    .line 290
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 300
    :cond_6
    :goto_4
    if-eqz v4, :cond_7

    .line 302
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 308
    :cond_7
    :goto_5
    throw v19

    .line 293
    :catch_3
    move-exception v10

    .line 295
    .local v10, "e":Ljava/io/IOException;
    const-string v20, "Legacy"

    const-string v21, "Exception closing file stream, for file, %s."

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p0, v22, v23

    invoke-static/range {v20 .. v22}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 305
    .end local v10    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v10

    .line 307
    .local v10, "e":Ljava/lang/Exception;
    const-string v20, "Legacy"

    const-string v21, "Exception closing buffer, for file, %s."

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p0, v22, v23

    invoke-static/range {v20 .. v22}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 286
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v13    # "fileStream":Ljava/io/FileInputStream;
    .restart local v11    # "easpData":Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
    .restart local v14    # "fileStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v19

    move-object v13, v14

    .end local v14    # "fileStream":Ljava/io/FileInputStream;
    .restart local v13    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v4    # "buffer":Ljava/io/InputStream;
    .end local v11    # "easpData":Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
    .end local v13    # "fileStream":Ljava/io/FileInputStream;
    .restart local v5    # "buffer":Ljava/io/InputStream;
    .restart local v14    # "fileStream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v19

    move-object v4, v5

    .end local v5    # "buffer":Ljava/io/InputStream;
    .restart local v4    # "buffer":Ljava/io/InputStream;
    move-object v13, v14

    .end local v14    # "fileStream":Ljava/io/FileInputStream;
    .restart local v13    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 277
    .end local v13    # "fileStream":Ljava/io/FileInputStream;
    .restart local v11    # "easpData":Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
    .restart local v14    # "fileStream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v10

    move-object v13, v14

    .end local v14    # "fileStream":Ljava/io/FileInputStream;
    .restart local v13    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v4    # "buffer":Ljava/io/InputStream;
    .end local v11    # "easpData":Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
    .end local v13    # "fileStream":Ljava/io/FileInputStream;
    .restart local v5    # "buffer":Ljava/io/InputStream;
    .restart local v14    # "fileStream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v10

    move-object v4, v5

    .end local v5    # "buffer":Ljava/io/InputStream;
    .restart local v4    # "buffer":Ljava/io/InputStream;
    move-object v13, v14

    .end local v14    # "fileStream":Ljava/io/FileInputStream;
    .restart local v13    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 216
    nop

    :array_0
    .array-data 1
        -0x19t
        -0x11t
        -0x7at
        0x5bt
        0x6dt
        -0x57t
        0xat
        0x3dt
        0x39t
        0x32t
        0xet
        -0x5t
        -0x6ct
        0x18t
        -0x1ct
        -0x19t
        -0x3at
        0x14t
        0x18t
        0x7ft
        0x3bt
        -0x6bt
        -0x7bt
        -0x26t
        0x65t
        0x2bt
        -0x52t
        0x75t
        0x1bt
        -0x3et
        -0x66t
        0x37t
    .end array-data
.end method

.method public static loadEADeviceId()Ljava/lang/String;
    .locals 8

    .prologue
    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v5

    invoke-interface {v5}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/EASP/commoninfo.dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, "fileDir":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Lcom/ea/nimble/EASPDataLoader;->loadDatFile(Ljava/lang/String;)Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;

    move-result-object v1

    .line 343
    .local v1, "data":Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
    iget-object v4, v1, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_version:Ljava/lang/String;

    const-string v5, "1.00.02"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 345
    iget-object v0, v1, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_decryptedByteBuffer:Ljava/nio/ByteBuffer;

    .line 347
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Lcom/ea/nimble/EASPDataLoader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 349
    invoke-static {v0}, Lcom/ea/nimble/EASPDataLoader;->readBooleanByte(Ljava/nio/ByteBuffer;)Z

    .line 351
    invoke-static {v0}, Lcom/ea/nimble/EASPDataLoader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 358
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "data":Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
    :goto_0
    return-object v4

    .line 354
    :catch_0
    move-exception v2

    .line 356
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "Legacy"

    const-string v5, "Exception when trying to load EASP data: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static readBooleanByte(Ljava/nio/ByteBuffer;)Z
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 112
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readLogEvent(Ljava/nio/ByteBuffer;)Lcom/ea/nimble/EASPDataLoader$LogEvent;
    .locals 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v2, Lcom/ea/nimble/EASPDataLoader$LogEvent;

    invoke-direct {v2}, Lcom/ea/nimble/EASPDataLoader$LogEvent;-><init>()V

    .line 124
    .local v2, "logEvent":Lcom/ea/nimble/EASPDataLoader$LogEvent;
    :try_start_0
    invoke-static {p0}, Lcom/ea/nimble/EASPDataLoader;->readBooleanByte(Ljava/nio/ByteBuffer;)Z

    move-result v0

    .line 125
    .local v0, "boolCheck":Z
    if-nez v0, :cond_0

    .line 126
    const/4 v2, 0x0

    .line 156
    .end local v2    # "logEvent":Lcom/ea/nimble/EASPDataLoader$LogEvent;
    :goto_0
    return-object v2

    .line 128
    .restart local v2    # "logEvent":Lcom/ea/nimble/EASPDataLoader$LogEvent;
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_type:I

    .line 129
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_indexInsideSession:I

    .line 132
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_dateTimeInNanoseconds:J

    .line 133
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_EAUID:I

    .line 134
    invoke-static {p0}, Lcom/ea/nimble/EASPDataLoader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_randomPart:Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_keyType01:I

    .line 138
    invoke-static {p0}, Lcom/ea/nimble/EASPDataLoader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_value01:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_keyType02:I

    .line 141
    invoke-static {p0}, Lcom/ea/nimble/EASPDataLoader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_value02:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_timestamp:J

    .line 145
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_keyType03:I

    .line 146
    invoke-static {p0}, Lcom/ea/nimble/EASPDataLoader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_value03:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_userLevel:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v0    # "boolCheck":Z
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "Legacy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading LogEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    throw v1
.end method

.method public static readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 10
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 71
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 73
    .local v4, "stringLength":I
    if-gtz v4, :cond_0

    .line 76
    const/4 v2, 0x0

    .line 103
    :goto_0
    return-object v2

    .line 79
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 82
    const-string v5, "Legacy"

    const-string v6, "String length greater than buffer remaining bytes."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    new-instance v5, Ljava/io/IOException;

    const-string v6, "String length uint32 corrupt, longer than remaining bytes."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 88
    :cond_1
    new-array v0, v4, [B

    .line 90
    .local v0, "byteArray":[B
    invoke-virtual {p0, v0, v9, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 92
    const/4 v2, 0x0

    .line 95
    .local v2, "str":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v3, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v2    # "str":Ljava/lang/String;
    .local v3, "str":Ljava/lang/String;
    :try_start_1
    const-string v5, "Legacy"

    const-string v6, "Read string (%s)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v5, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 101
    .end local v3    # "str":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const-string v5, "Legacy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read string exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "str":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "str":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_1
.end method
