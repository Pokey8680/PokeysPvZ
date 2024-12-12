.class public Lorg/restlet/data/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"

# interfaces
.implements Lorg/restlet/util/NamedValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/restlet/util/NamedValue",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile domain:Ljava/lang/String;

.field private volatile name:Ljava/lang/String;

.field private volatile path:Ljava/lang/String;

.field private volatile value:Ljava/lang/String;

.field private volatile version:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 76
    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Cookie;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "version"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 90
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Cookie;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Lorg/restlet/data/Cookie;->version:I

    .line 110
    iput-object p2, p0, Lorg/restlet/data/Cookie;->name:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lorg/restlet/data/Cookie;->value:Ljava/lang/String;

    .line 112
    iput-object p4, p0, Lorg/restlet/data/Cookie;->path:Ljava/lang/String;

    .line 113
    iput-object p5, p0, Lorg/restlet/data/Cookie;->domain:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 125
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Cookie;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    if-ne p1, p0, :cond_9

    move v0, v3

    .line 134
    .local v0, "result":Z
    :goto_0
    if-nez v0, :cond_8

    .line 135
    instance-of v0, p1, Lorg/restlet/data/Cookie;

    .line 138
    if-eqz v0, :cond_8

    move-object v1, p1

    .line 139
    check-cast v1, Lorg/restlet/data/Cookie;

    .line 140
    .local v1, "that":Lorg/restlet/data/Cookie;
    invoke-virtual {v1}, Lorg/restlet/data/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lorg/restlet/data/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/data/Cookie;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_1
    move v0, v3

    .line 144
    :goto_1
    if-eqz v0, :cond_8

    .line 145
    invoke-virtual {v1}, Lorg/restlet/data/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lorg/restlet/data/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lorg/restlet/data/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lorg/restlet/data/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/data/Cookie;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_3
    move v0, v3

    .line 149
    :goto_2
    if-eqz v0, :cond_8

    .line 150
    iget v4, p0, Lorg/restlet/data/Cookie;->version:I

    iget v5, v1, Lorg/restlet/data/Cookie;->version:I

    if-ne v4, v5, :cond_c

    move v0, v3

    .line 153
    :goto_3
    if-eqz v0, :cond_8

    .line 154
    invoke-virtual {v1}, Lorg/restlet/data/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lorg/restlet/data/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {p0}, Lorg/restlet/data/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lorg/restlet/data/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/data/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_5
    move v0, v3

    .line 158
    :goto_4
    if-eqz v0, :cond_8

    .line 160
    invoke-virtual {v1}, Lorg/restlet/data/Cookie;->getPath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lorg/restlet/data/Cookie;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    :cond_6
    invoke-virtual {p0}, Lorg/restlet/data/Cookie;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Lorg/restlet/data/Cookie;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/data/Cookie;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_7
    move v0, v3

    .line 169
    .end local v1    # "that":Lorg/restlet/data/Cookie;
    :cond_8
    :goto_5
    return v0

    .end local v0    # "result":Z
    :cond_9
    move v0, v2

    .line 132
    goto/16 :goto_0

    .restart local v0    # "result":Z
    .restart local v1    # "that":Lorg/restlet/data/Cookie;
    :cond_a
    move v0, v2

    .line 140
    goto :goto_1

    :cond_b
    move v0, v2

    .line 145
    goto :goto_2

    :cond_c
    move v0, v2

    .line 150
    goto :goto_3

    :cond_d
    move v0, v2

    .line 154
    goto :goto_4

    :cond_e
    move v0, v2

    .line 160
    goto :goto_5
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/restlet/data/Cookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/restlet/data/Cookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/restlet/data/Cookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/restlet/data/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/restlet/data/Cookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lorg/restlet/data/Cookie;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 220
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/restlet/data/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/restlet/data/Cookie;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/restlet/data/Cookie;->getVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lorg/restlet/data/Cookie;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lorg/restlet/data/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/restlet/engine/util/SystemUtils;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lorg/restlet/data/Cookie;->domain:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lorg/restlet/data/Cookie;->name:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lorg/restlet/data/Cookie;->path:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/data/Cookie;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lorg/restlet/data/Cookie;->value:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 271
    iput p1, p0, Lorg/restlet/data/Cookie;->version:I

    .line 272
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cookie [domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/data/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/data/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/data/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/data/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/restlet/data/Cookie;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
