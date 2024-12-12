.class public Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
.super Ljava/lang/Object;
.source "ThinICEConfigSettings.java"


# static fields
.field public static final CELL_OP_FLAG_DISABLE_CURRENT_DETAILS:I = 0x2

.field public static final CELL_OP_FLAG_DISABLE_SIM_DETAILS:I = 0x1

.field public static final WIFI_FLAG_DISABLE_NOMAP_EXCLUSION:I = 0x2

.field public static final WIFI_FLAG_DISABLE_SSID_COLLECTION:I = 0x1


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:J

.field private h:J

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->a:Z

    .line 18
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->b:Z

    .line 19
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->c:Z

    .line 20
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->d:Z

    .line 21
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->e:Z

    .line 22
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->f:Z

    .line 23
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->g:J

    .line 24
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->h:J

    .line 25
    const/16 v0, 0x32

    iput v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->i:I

    .line 26
    iput v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->j:I

    .line 27
    iput v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->k:I

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->a:Z

    .line 18
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->b:Z

    .line 19
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->c:Z

    .line 20
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->d:Z

    .line 21
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->e:Z

    .line 22
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->f:Z

    .line 23
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->g:J

    .line 24
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->h:J

    .line 25
    const/16 v0, 0x32

    iput v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->i:I

    .line 26
    iput v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->j:I

    .line 27
    iput v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->k:I

    .line 41
    iget-boolean v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->a:Z

    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->a:Z

    .line 42
    iget-boolean v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->b:Z

    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->b:Z

    .line 43
    iget-boolean v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->c:Z

    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->c:Z

    .line 44
    iget-boolean v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->d:Z

    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->d:Z

    .line 45
    iget-boolean v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->e:Z

    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->e:Z

    .line 46
    iget-boolean v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->f:Z

    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->f:Z

    .line 47
    iget-wide v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->g:J

    iput-wide v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->g:J

    .line 48
    iget-wide v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->h:J

    iput-wide v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->h:J

    .line 49
    iget v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->i:I

    iput v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->i:I

    .line 50
    iget v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->j:I

    iput v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->j:I

    .line 51
    iget v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->k:I

    iput v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->k:I

    .line 52
    return-void
.end method

.method public static bitTest(II)Z
    .locals 1

    .prologue
    .line 338
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCellOpFlags()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->k:I

    return v0
.end method

.method public getSampleHistorySize()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->i:I

    return v0
.end method

.method public getSampleInterval()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->g:J

    return-wide v0
.end method

.method public getStopRequestTimeout()J
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->h:J

    return-wide v0
.end method

.method public getWifiFlags()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->j:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->a:Z

    return v0
.end method

.method public isSampleCellEnabled()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->c:Z

    return v0
.end method

.method public isSampleCellOperatorEnabled()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->b:Z

    return v0
.end method

.method public isSampleConnectedWifiEnabled()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->d:Z

    return v0
.end method

.method public isSampleLocationEnabled()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->e:Z

    return v0
.end method

.method public isSampleVisibleWifiEnabled()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->f:Z

    return v0
.end method

.method public setCellOpFlags(I)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 0

    .prologue
    .line 326
    iput p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->k:I

    .line 327
    return-object p0
.end method

.method public setEnabled(Z)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->a:Z

    .line 70
    return-object p0
.end method

.method public setSampleCellEnabled(Z)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->c:Z

    .line 111
    return-object p0
.end method

.method public setSampleCellOperatorEnabled(Z)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->b:Z

    .line 91
    return-object p0
.end method

.method public setSampleConnectedWifiEnabled(Z)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 0

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->d:Z

    .line 133
    return-object p0
.end method

.method public setSampleHistorySize(I)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 2

    .prologue
    .line 245
    if-gtz p1, :cond_0

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sample history size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    iput p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->i:I

    .line 249
    return-object p0
.end method

.method public setSampleInterval(J)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 3

    .prologue
    .line 194
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sample interval must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    iput-wide p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->g:J

    .line 198
    return-object p0
.end method

.method public setSampleLocationEnabled(Z)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 0

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->e:Z

    .line 153
    return-object p0
.end method

.method public setSampleVisibleWifiEnabled(Z)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 0

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->f:Z

    .line 175
    return-object p0
.end method

.method public setStopRequestTimeout(J)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 3

    .prologue
    .line 221
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stop request timeout must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    iput-wide p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->h:J

    .line 225
    return-object p0
.end method

.method public setWifiFlags(I)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 0

    .prologue
    .line 289
    iput p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->j:I

    .line 290
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string v1, "mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    const-string v1, "mSampleCellOperatorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v1, "mSampleCellEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string v1, "mSampleConnectedWifiEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v1, "mSampleLocationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v1, "mSampleVisibleWifiEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string v1, "mSampleInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v1, "mStopRequestTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, "mWifiFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v1, "mCellOpFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
