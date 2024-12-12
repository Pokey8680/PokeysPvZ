.class Lcom/ea/nimble/Encryptor;
.super Ljava/lang/Object;
.source "Encryptor.java"


# static fields
.field private static ENCRYPTION_KEY_LENGHT:I

.field private static ENCRYPTION_KEY_ROUND:I


# instance fields
.field private m_decryptor:Ljavax/crypto/Cipher;

.field private m_encryptor:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x3e5

    sput v0, Lcom/ea/nimble/Encryptor;->ENCRYPTION_KEY_ROUND:I

    .line 37
    const/16 v0, 0x80

    sput v0, Lcom/ea/nimble/Encryptor;->ENCRYPTION_KEY_LENGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/ea/nimble/Encryptor;->m_encryptor:Ljavax/crypto/Cipher;

    .line 42
    iput-object v0, p0, Lcom/ea/nimble/Encryptor;->m_decryptor:Ljavax/crypto/Cipher;

    .line 43
    return-void
.end method

.method private initialize()V
    .locals 30
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v20

    .line 49
    .local v20, "providers":[Ljava/security/Provider;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    const/16 v24, 0x0

    :goto_0
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    aget-object v19, v20, v24

    .line 50
    .local v19, "provider":Ljava/security/Provider;
    const/16 v26, 0x0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cryptor Provider: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v19 .. v19}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v28}, Lcom/ea/nimble/Log$Helper;->LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-virtual/range {v19 .. v19}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v23

    .line 52
    .local v23, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Provider$Service;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/security/Provider$Service;

    .line 53
    .local v22, "service":Ljava/security/Provider$Service;
    const/16 v27, 0x0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Cryptor Algorithm: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v22 .. v22}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/ea/nimble/Log$Helper;->LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 49
    .end local v22    # "service":Ljava/security/Provider$Service;
    :cond_0
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 59
    .end local v19    # "provider":Ljava/security/Provider;
    .end local v23    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Provider$Service;>;"
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v4

    .line 60
    .local v4, "appEnv":Lcom/ea/nimble/IApplicationEnvironment;
    invoke-interface {v4}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationBundleId()Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "bundleId":Ljava/lang/String;
    invoke-interface {v4}, Lcom/ea/nimble/IApplicationEnvironment;->getMACAddress()Ljava/lang/String;

    move-result-object v17

    .line 62
    .local v17, "macAddress":Ljava/lang/String;
    if-nez v17, :cond_5

    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_5

    .line 67
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v11

    .line 69
    .local v11, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_2
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/NetworkInterface;

    .line 71
    .local v12, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v12}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v16

    .line 72
    .local v16, "mac":[B
    if-eqz v16, :cond_2

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v5, "buf":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .local v10, "idx":I
    :goto_3
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_3

    .line 81
    const-string v25, "%02X:"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-byte v28, v16, v10

    invoke-static/range {v28 .. v28}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 83
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_4

    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 87
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    .line 89
    goto :goto_2

    .line 91
    .end local v5    # "buf":Ljava/lang/StringBuilder;
    .end local v10    # "idx":I
    .end local v11    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v12    # "intf":Ljava/net/NetworkInterface;
    .end local v16    # "mac":[B
    :catch_0
    move-exception v24

    .line 95
    :cond_5
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    .line 96
    .restart local v16    # "mac":[B
    const/16 v24, 0x8

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 97
    .local v21, "salt":[B
    const/4 v9, 0x0

    .local v9, "i":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_4
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v9, v0, :cond_7

    .line 99
    add-int/lit8 v24, v13, 0x1

    rem-int/lit8 v24, v24, 0x3

    if-nez v24, :cond_6

    .line 101
    add-int/lit8 v13, v13, 0x1

    .line 103
    :cond_6
    aget-byte v24, v16, v13

    aput-byte v24, v21, v9

    .line 97
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 105
    :cond_7
    const-string v24, "PBEWithMD5AndDES"

    invoke-static/range {v24 .. v24}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v8

    .line 106
    .local v8, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v15, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v24

    sget v25, Lcom/ea/nimble/Encryptor;->ENCRYPTION_KEY_ROUND:I

    sget v26, Lcom/ea/nimble/Encryptor;->ENCRYPTION_KEY_LENGHT:I

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v15, v0, v1, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 108
    .local v15, "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {v8, v15}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v14

    .line 109
    .local v14, "key":Ljavax/crypto/SecretKey;
    new-instance v18, Ljavax/crypto/spec/PBEParameterSpec;

    sget v24, Lcom/ea/nimble/Encryptor;->ENCRYPTION_KEY_ROUND:I

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 111
    .local v18, "parameterSpec":Ljavax/crypto/spec/PBEParameterSpec;
    const-string v24, "PBEWithMD5AndDES"

    invoke-static/range {v24 .. v24}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/Encryptor;->m_encryptor:Ljavax/crypto/Cipher;

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/Encryptor;->m_encryptor:Ljavax/crypto/Cipher;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v14, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 114
    const-string v24, "PBEWithMD5AndDES"

    invoke-static/range {v24 .. v24}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/Encryptor;->m_decryptor:Ljavax/crypto/Cipher;

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/Encryptor;->m_decryptor:Ljavax/crypto/Cipher;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v14, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 122
    return-void

    .line 117
    .end local v4    # "appEnv":Lcom/ea/nimble/IApplicationEnvironment;
    .end local v6    # "bundleId":Ljava/lang/String;
    .end local v8    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v9    # "i":I
    .end local v13    # "j":I
    .end local v14    # "key":Ljavax/crypto/SecretKey;
    .end local v15    # "keySpec":Ljava/security/spec/KeySpec;
    .end local v16    # "mac":[B
    .end local v17    # "macAddress":Ljava/lang/String;
    .end local v18    # "parameterSpec":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v21    # "salt":[B
    :catch_1
    move-exception v7

    .line 119
    .local v7, "e":Ljava/security/GeneralSecurityException;
    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Can\'t initialize Encryptor: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v7}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Lcom/ea/nimble/Log$Helper;->LOGFS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    throw v7
.end method


# virtual methods
.method public encryptInputStream(Ljava/io/InputStream;)Ljava/io/ObjectInputStream;
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ea/nimble/Encryptor;->m_encryptor:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/Encryptor;->m_encryptor:Ljavax/crypto/Cipher;

    if-nez v0, :cond_1

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/ea/nimble/Encryptor;->initialize()V

    .line 130
    :cond_1
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v1, Ljavax/crypto/CipherInputStream;

    iget-object v2, p0, Lcom/ea/nimble/Encryptor;->m_decryptor:Ljavax/crypto/Cipher;

    invoke-direct {v1, p1, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public encryptOutputStream(Ljava/io/OutputStream;)Ljava/io/ObjectOutputStream;
    .locals 3
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ea/nimble/Encryptor;->m_encryptor:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/Encryptor;->m_encryptor:Ljavax/crypto/Cipher;

    if-nez v0, :cond_1

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/ea/nimble/Encryptor;->initialize()V

    .line 139
    :cond_1
    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljavax/crypto/CipherOutputStream;

    iget-object v2, p0, Lcom/ea/nimble/Encryptor;->m_encryptor:Ljavax/crypto/Cipher;

    invoke-direct {v1, p1, v2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method
