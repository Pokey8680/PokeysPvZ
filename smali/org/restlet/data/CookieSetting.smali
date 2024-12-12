.class public final Lorg/restlet/data/CookieSetting;
.super Lorg/restlet/data/Cookie;
.source "CookieSetting.java"


# instance fields
.field private volatile accessRestricted:Z

.field private volatile comment:Ljava/lang/String;

.field private volatile maxAge:I

.field private volatile secure:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lorg/restlet/data/CookieSetting;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "version"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 86
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/CookieSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "version"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 105
    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v9, v8

    invoke-direct/range {v0 .. v9}, Lorg/restlet/data/CookieSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 106
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 10
    .param p1, "version"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "comment"    # Ljava/lang/String;
    .param p7, "maxAge"    # I
    .param p8, "secure"    # Z

    .prologue
    .line 134
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/restlet/data/CookieSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 135
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "comment"    # Ljava/lang/String;
    .param p7, "maxAge"    # I
    .param p8, "secure"    # Z
    .param p9, "accessRestricted"    # Z

    .prologue
    .line 168
    invoke-direct/range {p0 .. p5}, Lorg/restlet/data/Cookie;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iput-object p6, p0, Lorg/restlet/data/CookieSetting;->comment:Ljava/lang/String;

    .line 170
    iput p7, p0, Lorg/restlet/data/CookieSetting;->maxAge:I

    .line 171
    iput-boolean p8, p0, Lorg/restlet/data/CookieSetting;->secure:Z

    .line 172
    iput-boolean p9, p0, Lorg/restlet/data/CookieSetting;->accessRestricted:Z

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 184
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/CookieSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 190
    if-ne p1, p0, :cond_1

    move v0, v2

    .line 193
    .local v0, "result":Z
    :goto_0
    if-nez v0, :cond_0

    .line 195
    invoke-super {p0, p1}, Lorg/restlet/data/Cookie;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    instance-of v4, p1, Lorg/restlet/data/CookieSetting;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 199
    check-cast v1, Lorg/restlet/data/CookieSetting;

    .line 200
    .local v1, "that":Lorg/restlet/data/CookieSetting;
    iget v4, p0, Lorg/restlet/data/CookieSetting;->maxAge:I

    iget v5, v1, Lorg/restlet/data/CookieSetting;->maxAge:I

    if-ne v4, v5, :cond_2

    iget-boolean v4, p0, Lorg/restlet/data/CookieSetting;->secure:Z

    iget-boolean v5, v1, Lorg/restlet/data/CookieSetting;->secure:Z

    if-ne v4, v5, :cond_2

    move v0, v2

    .line 203
    :goto_1
    if-eqz v0, :cond_0

    .line 206
    iget-object v4, p0, Lorg/restlet/data/CookieSetting;->comment:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 209
    iget-object v2, p0, Lorg/restlet/data/CookieSetting;->comment:Ljava/lang/String;

    iget-object v3, v1, Lorg/restlet/data/CookieSetting;->comment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 218
    .end local v1    # "that":Lorg/restlet/data/CookieSetting;
    :cond_0
    :goto_2
    return v0

    .end local v0    # "result":Z
    :cond_1
    move v0, v3

    .line 190
    goto :goto_0

    .restart local v0    # "result":Z
    .restart local v1    # "that":Lorg/restlet/data/CookieSetting;
    :cond_2
    move v0, v3

    .line 200
    goto :goto_1

    .line 211
    :cond_3
    iget-object v4, v1, Lorg/restlet/data/CookieSetting;->comment:Ljava/lang/String;

    if-nez v4, :cond_4

    move v0, v2

    :goto_3
    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_3
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/restlet/data/CookieSetting;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    const-string v0, "Cookie setting"

    return-object v0
.end method

.method public getMaxAge()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lorg/restlet/data/CookieSetting;->maxAge:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 253
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-super {p0}, Lorg/restlet/data/Cookie;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/restlet/data/CookieSetting;->getComment()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/restlet/data/CookieSetting;->getMaxAge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lorg/restlet/data/CookieSetting;->isSecure()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/restlet/engine/util/SystemUtils;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAccessRestricted()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lorg/restlet/data/CookieSetting;->accessRestricted:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lorg/restlet/data/CookieSetting;->secure:Z

    return v0
.end method

.method public setAccessRestricted(Z)V
    .locals 0
    .param p1, "accessRestricted"    # Z

    .prologue
    .line 286
    iput-boolean p1, p0, Lorg/restlet/data/CookieSetting;->accessRestricted:Z

    .line 287
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 296
    iput-object p1, p0, Lorg/restlet/data/CookieSetting;->comment:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setMaxAge(I)V
    .locals 0
    .param p1, "maxAge"    # I

    .prologue
    .line 307
    iput p1, p0, Lorg/restlet/data/CookieSetting;->maxAge:I

    .line 308
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "secure"    # Z

    .prologue
    .line 317
    iput-boolean p1, p0, Lorg/restlet/data/CookieSetting;->secure:Z

    .line 318
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CookieSetting [accessRestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/restlet/data/CookieSetting;->accessRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/data/CookieSetting;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/restlet/data/CookieSetting;->maxAge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/restlet/data/CookieSetting;->secure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/data/CookieSetting;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/data/CookieSetting;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/data/CookieSetting;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/data/CookieSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/data/CookieSetting;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
