.class public Lcom/ea/blast/NearFieldCommunicationAndroid;
.super Ljava/lang/Object;
.source "NearFieldCommunicationAndroid.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
.implements Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;


# instance fields
.field private mAAREnabled:Z

.field private mMimeType:Ljava/lang/String;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field public mUserData:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mUserData:I

    .line 30
    const-string v0, "text/plain"

    iput-object v0, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mMimeType:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public EnableAAR(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mAAREnabled:Z

    .line 78
    return-void
.end method

.method public Exit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 64
    iget-object v0, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    new-array v2, v3, [Landroid/app/Activity;

    invoke-virtual {v0, v4, v1, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 67
    iget-object v0, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    new-array v2, v3, [Landroid/app/Activity;

    invoke-virtual {v0, v4, v1, v2}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public GetPendingNFC()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 147
    sget-object v2, Lcom/ea/blast/MainActivity;->mPendingNFCList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 149
    const/4 v1, 0x0

    .line 156
    :goto_0
    return-object v1

    .line 152
    :cond_0
    sget-object v2, Lcom/ea/blast/MainActivity;->mPendingNFCList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NdefMessage;

    .line 153
    .local v0, "msg":Landroid/nfc/NdefMessage;
    sget-object v2, Lcom/ea/blast/MainActivity;->mPendingNFCList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 155
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 156
    .local v1, "value":Ljava/lang/String;
    goto :goto_0
.end method

.method public Init()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 35
    iput v1, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mUserData:I

    .line 36
    iput-boolean v2, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mAAREnabled:Z

    .line 38
    invoke-virtual {p0}, Lcom/ea/blast/NearFieldCommunicationAndroid;->IsAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v1

    .line 43
    :cond_1
    sget-object v3, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v4, "nfc"

    invoke-virtual {v3, v4}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 44
    .local v0, "manager":Landroid/nfc/NfcManager;
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 45
    iget-object v3, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v3, :cond_0

    .line 51
    iget-object v3, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    sget-object v4, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    new-array v5, v1, [Landroid/app/Activity;

    invoke-virtual {v3, p0, v4, v5}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 52
    iget-object v3, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    sget-object v4, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    new-array v1, v1, [Landroid/app/Activity;

    invoke-virtual {v3, p0, v4, v1}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    move v1, v2

    .line 54
    goto :goto_0
.end method

.method public IsAvailable()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 82
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v4, v5, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v3

    .line 89
    :cond_1
    :try_start_0
    sget-object v4, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v5, "nfc"

    invoke-virtual {v4, v5}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/NfcManager;

    .line 90
    .local v2, "manager":Landroid/nfc/NfcManager;
    invoke-virtual {v2}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 91
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 97
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    .end local v2    # "manager":Landroid/nfc/NfcManager;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public RegisterUserData(I)V
    .locals 0
    .param p1, "userData"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mUserData:I

    .line 60
    return-void
.end method

.method public SetMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mMimeType:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public native cbNFCCompletedTX(I)V
.end method

.method public native cbNFCProximityTX(I)Ljava/lang/String;
.end method

.method public createMimeRecord(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .prologue
    .line 140
    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 141
    .local v0, "mimeBytes":[B
    new-instance v1, Landroid/nfc/NdefRecord;

    const/4 v2, 0x2

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v1, v2, v0, v3, p2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 142
    .local v1, "mimeRecord":Landroid/nfc/NdefRecord;
    return-object v1
.end method

.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 7
    .param p1, "event"    # Landroid/nfc/NfcEvent;

    .prologue
    .line 113
    iget v3, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mUserData:I

    invoke-virtual {p0, v3}, Lcom/ea/blast/NearFieldCommunicationAndroid;->cbNFCProximityTX(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "msgNFC":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    .line 119
    :cond_0
    const/4 v0, 0x0

    .line 122
    .local v0, "msg":Landroid/nfc/NdefMessage;
    :try_start_0
    iget-boolean v3, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mAAREnabled:Z

    if-eqz v3, :cond_1

    .line 124
    new-instance v1, Landroid/nfc/NdefMessage;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/ea/blast/NearFieldCommunicationAndroid;->createMimeRecord(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v5}, Lcom/ea/blast/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .end local v0    # "msg":Landroid/nfc/NdefMessage;
    .local v1, "msg":Landroid/nfc/NdefMessage;
    move-object v0, v1

    .end local v1    # "msg":Landroid/nfc/NdefMessage;
    .restart local v0    # "msg":Landroid/nfc/NdefMessage;
    goto :goto_0

    .line 128
    :cond_1
    new-instance v1, Landroid/nfc/NdefMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/ea/blast/NearFieldCommunicationAndroid;->createMimeRecord(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "msg":Landroid/nfc/NdefMessage;
    .restart local v1    # "msg":Landroid/nfc/NdefMessage;
    move-object v0, v1

    .end local v1    # "msg":Landroid/nfc/NdefMessage;
    .restart local v0    # "msg":Landroid/nfc/NdefMessage;
    goto :goto_0

    .line 131
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onNdefPushComplete(Landroid/nfc/NfcEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/nfc/NfcEvent;

    .prologue
    .line 106
    iget v0, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mUserData:I

    invoke-virtual {p0, v0}, Lcom/ea/blast/NearFieldCommunicationAndroid;->cbNFCCompletedTX(I)V

    .line 107
    return-void
.end method
