.class public final Lorg/restlet/data/LocalReference;
.super Lorg/restlet/data/Reference;
.source "LocalReference.java"


# static fields
.field public static final CLAP_CLASS:I = 0x1

.field public static final CLAP_DEFAULT:I = 0x0

.field public static final CLAP_SYSTEM:I = 0x2

.field public static final CLAP_THREAD:I = 0x3

.field public static final RIAP_APPLICATION:I = 0x4

.field public static final RIAP_COMPONENT:I = 0x5

.field public static final RIAP_HOST:I = 0x6


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "localUri"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "localRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 327
    invoke-virtual {p1}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public static createClapReference(ILjava/lang/Package;)Lorg/restlet/data/LocalReference;
    .locals 4
    .param p0, "authorityType"    # I
    .param p1, "pkg"    # Ljava/lang/Package;

    .prologue
    .line 122
    invoke-virtual {p1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "pkgPath":Ljava/lang/String;
    new-instance v1, Lorg/restlet/data/LocalReference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clap://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lorg/restlet/data/LocalReference;->getAuthorityName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/restlet/data/LocalReference;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static createClapReference(ILjava/lang/String;)Lorg/restlet/data/LocalReference;
    .locals 3
    .param p0, "authorityType"    # I
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 147
    new-instance v0, Lorg/restlet/data/LocalReference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clap://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lorg/restlet/data/LocalReference;->getAuthorityName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/restlet/data/LocalReference;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createClapReference(Ljava/lang/Package;)Lorg/restlet/data/LocalReference;
    .locals 1
    .param p0, "pkg"    # Ljava/lang/Package;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/restlet/data/LocalReference;->createClapReference(ILjava/lang/Package;)Lorg/restlet/data/LocalReference;

    move-result-object v0

    return-object v0
.end method

.method public static createClapReference(Ljava/lang/String;)Lorg/restlet/data/LocalReference;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/restlet/data/LocalReference;->createClapReference(ILjava/lang/String;)Lorg/restlet/data/LocalReference;

    move-result-object v0

    return-object v0
.end method

.method public static createFileReference(Ljava/io/File;)Lorg/restlet/data/LocalReference;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 160
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/data/LocalReference;->createFileReference(Ljava/lang/String;)Lorg/restlet/data/LocalReference;

    move-result-object v0

    return-object v0
.end method

.method public static createFileReference(Ljava/lang/String;)Lorg/restlet/data/LocalReference;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string v0, ""

    invoke-static {v0, p0}, Lorg/restlet/data/LocalReference;->createFileReference(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/data/LocalReference;

    move-result-object v0

    return-object v0
.end method

.method public static createFileReference(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/data/LocalReference;
    .locals 3
    .param p0, "hostName"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 185
    new-instance v0, Lorg/restlet/data/LocalReference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/restlet/data/LocalReference;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/restlet/data/LocalReference;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createJarReference(Lorg/restlet/data/Reference;Ljava/lang/String;)Lorg/restlet/data/LocalReference;
    .locals 3
    .param p0, "jarFile"    # Lorg/restlet/data/Reference;
    .param p1, "entryPath"    # Ljava/lang/String;

    .prologue
    .line 199
    new-instance v0, Lorg/restlet/data/LocalReference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/restlet/data/LocalReference;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createRiapReference(ILjava/lang/String;)Lorg/restlet/data/LocalReference;
    .locals 3
    .param p0, "authorityType"    # I
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 213
    new-instance v0, Lorg/restlet/data/LocalReference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "riap://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lorg/restlet/data/LocalReference;->getAuthorityName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/restlet/data/LocalReference;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createZipReference(Lorg/restlet/data/Reference;Ljava/lang/String;)Lorg/restlet/data/LocalReference;
    .locals 3
    .param p0, "zipFile"    # Lorg/restlet/data/Reference;
    .param p1, "entryPath"    # Ljava/lang/String;

    .prologue
    .line 227
    new-instance v0, Lorg/restlet/data/LocalReference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/restlet/data/LocalReference;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAuthorityName(I)Ljava/lang/String;
    .locals 1
    .param p0, "authority"    # I

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 241
    .local v0, "result":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 265
    :goto_0
    return-object v0

    .line 243
    :pswitch_0
    const-string v0, ""

    .line 244
    goto :goto_0

    .line 246
    :pswitch_1
    const-string v0, "class"

    .line 247
    goto :goto_0

    .line 249
    :pswitch_2
    const-string v0, "system"

    .line 250
    goto :goto_0

    .line 252
    :pswitch_3
    const-string v0, "thread"

    .line 253
    goto :goto_0

    .line 255
    :pswitch_4
    const-string v0, "application"

    .line 256
    goto :goto_0

    .line 258
    :pswitch_5
    const-string v0, "component"

    .line 259
    goto :goto_0

    .line 261
    :pswitch_6
    const-string v0, "host"

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static localizePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 280
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 281
    .local v1, "nextChar":C
    const/16 v3, 0x2f

    if-ne v1, v3, :cond_0

    .line 284
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 290
    .end local v1    # "nextChar":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 305
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 306
    .local v1, "nextChar":C
    sget-char v3, Ljava/io/File;->separatorChar:C

    if-ne v1, v3, :cond_0

    .line 309
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_0
    invoke-static {v1}, Lorg/restlet/data/LocalReference;->isUnreserved(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 313
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 317
    .end local v1    # "nextChar":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getClapAuthorityType()I
    .locals 4

    .prologue
    .line 346
    const/4 v1, 0x0

    .line 348
    .local v1, "result":I
    sget-object v2, Lorg/restlet/data/Protocol;->CLAP:Lorg/restlet/data/Protocol;

    invoke-virtual {p0}, Lorg/restlet/data/LocalReference;->getSchemeProtocol()Lorg/restlet/data/Protocol;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Protocol;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    invoke-virtual {p0}, Lorg/restlet/data/LocalReference;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "authority":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 352
    const/4 v2, 0x1

    invoke-static {v2}, Lorg/restlet/data/LocalReference;->getAuthorityName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    const/4 v1, 0x1

    .line 366
    .end local v0    # "authority":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 354
    .restart local v0    # "authority":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x2

    invoke-static {v2}, Lorg/restlet/data/LocalReference;->getAuthorityName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    const/4 v1, 0x2

    goto :goto_0

    .line 357
    :cond_2
    const/4 v2, 0x3

    invoke-static {v2}, Lorg/restlet/data/LocalReference;->getAuthorityName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 359
    const/4 v1, 0x3

    goto :goto_0

    .line 361
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 5

    .prologue
    .line 376
    const/4 v2, 0x0

    .line 378
    .local v2, "result":Ljava/io/File;
    sget-object v3, Lorg/restlet/data/Protocol;->FILE:Lorg/restlet/data/Protocol;

    invoke-virtual {p0}, Lorg/restlet/data/LocalReference;->getSchemeProtocol()Lorg/restlet/data/Protocol;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/restlet/data/Protocol;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 379
    invoke-virtual {p0}, Lorg/restlet/data/LocalReference;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "hostName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "localhost"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 383
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/LocalReference;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2    # "result":Ljava/io/File;
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "hostName":Ljava/lang/String;
    .restart local v2    # "result":Ljava/io/File;
    :cond_1
    return-object v2

    .line 386
    .restart local v1    # "hostName":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Can\'t resolve files on remote host machines"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getJarEntryPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 402
    .local v0, "result":Ljava/lang/String;
    sget-object v3, Lorg/restlet/data/Protocol;->JAR:Lorg/restlet/data/Protocol;

    invoke-virtual {p0}, Lorg/restlet/data/LocalReference;->getSchemeProtocol()Lorg/restlet/data/Protocol;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/restlet/data/Protocol;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 403
    invoke-virtual {p0}, Lorg/restlet/data/LocalReference;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "ssp":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 406
    const-string v3, "!/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 408
    .local v1, "separatorIndex":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 409
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 414
    .end local v1    # "separatorIndex":I
    .end local v2    # "ssp":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getJarFileRef()Lorg/restlet/data/Reference;
    .locals 5

    .prologue
    .line 423
    const/4 v0, 0x0

    .line 425
    .local v0, "result":Lorg/restlet/data/Reference;
    sget-object v3, Lorg/restlet/data/Protocol;->JAR:Lorg/restlet/data/Protocol;

    invoke-virtual {p0}, Lorg/restlet/data/LocalReference;->getSchemeProtocol()Lorg/restlet/data/Protocol;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/restlet/data/Protocol;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 426
    invoke-virtual {p0}, Lorg/restlet/data/LocalReference;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 428
    .local v2, "ssp":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 429
    const-string v3, "!/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 431
    .local v1, "separatorIndex":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 432
    new-instance v0, Lorg/restlet/data/Reference;

    .end local v0    # "result":Lorg/restlet/data/Reference;
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    .line 437
    .end local v1    # "separatorIndex":I
    .end local v2    # "ssp":Ljava/lang/String;
    .restart local v0    # "result":Lorg/restlet/data/Reference;
    :cond_0
    return-object v0
.end method

.method public getRiapAuthorityType()I
    .locals 4

    .prologue
    .line 446
    const/4 v1, 0x0

    .line 448
    .local v1, "result":I
    sget-object v2, Lorg/restlet/data/Protocol;->RIAP:Lorg/restlet/data/Protocol;

    invoke-virtual {p0}, Lorg/restlet/data/LocalReference;->getSchemeProtocol()Lorg/restlet/data/Protocol;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Protocol;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    invoke-virtual {p0}, Lorg/restlet/data/LocalReference;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "authority":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 452
    const/4 v2, 0x4

    invoke-static {v2}, Lorg/restlet/data/LocalReference;->getAuthorityName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    const/4 v1, 0x4

    .line 465
    .end local v0    # "authority":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 455
    .restart local v0    # "authority":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x5

    invoke-static {v2}, Lorg/restlet/data/LocalReference;->getAuthorityName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 457
    const/4 v1, 0x5

    goto :goto_0

    .line 458
    :cond_2
    const/4 v2, 0x6

    invoke-static {v2}, Lorg/restlet/data/LocalReference;->getAuthorityName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    const/4 v1, 0x6

    goto :goto_0
.end method
