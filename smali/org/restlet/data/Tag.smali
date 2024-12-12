.class public final Lorg/restlet/data/Tag;
.super Ljava/lang/Object;
.source "Tag.java"


# static fields
.field public static final ALL:Lorg/restlet/data/Tag;


# instance fields
.field private volatile name:Ljava/lang/String;

.field private final weak:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "*"

    invoke-static {v0}, Lorg/restlet/data/Tag;->parse(Ljava/lang/String;)Lorg/restlet/data/Tag;

    move-result-object v0

    sput-object v0, Lorg/restlet/data/Tag;->ALL:Lorg/restlet/data/Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/restlet/data/Tag;-><init>(Ljava/lang/String;Z)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "opaqueTag"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/restlet/data/Tag;-><init>(Ljava/lang/String;Z)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "opaqueTag"    # Ljava/lang/String;
    .param p2, "weak"    # Z

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lorg/restlet/data/Tag;->name:Ljava/lang/String;

    .line 133
    iput-boolean p2, p0, Lorg/restlet/data/Tag;->weak:Z

    .line 134
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/restlet/data/Tag;
    .locals 7
    .param p0, "httpTag"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, "result":Lorg/restlet/data/Tag;
    const/4 v2, 0x0

    .line 79
    .local v2, "weak":Z
    move-object v0, p0

    .line 81
    .local v0, "httpTagCopy":Ljava/lang/String;
    const-string v3, "W/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    const/4 v2, 0x1

    .line 83
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_0
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    new-instance v1, Lorg/restlet/data/Tag;

    .end local v1    # "result":Lorg/restlet/data/Tag;
    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lorg/restlet/data/Tag;-><init>(Ljava/lang/String;Z)V

    .line 96
    .restart local v1    # "result":Lorg/restlet/data/Tag;
    :goto_0
    return-object v1

    .line 89
    :cond_1
    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    new-instance v1, Lorg/restlet/data/Tag;

    .end local v1    # "result":Lorg/restlet/data/Tag;
    const-string v3, "*"

    invoke-direct {v1, v3, v2}, Lorg/restlet/data/Tag;-><init>(Ljava/lang/String;Z)V

    .restart local v1    # "result":Lorg/restlet/data/Tag;
    goto :goto_0

    .line 92
    :cond_2
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid tag format detected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/restlet/data/Tag;->equals(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;Z)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "checkWeakness"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 159
    if-eqz p1, :cond_2

    instance-of v4, p1, Lorg/restlet/data/Tag;

    if-eqz v4, :cond_2

    move v0, v2

    .line 161
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, p1

    .line 162
    check-cast v1, Lorg/restlet/data/Tag;

    .line 164
    .local v1, "that":Lorg/restlet/data/Tag;
    if-eqz p2, :cond_0

    .line 165
    invoke-virtual {v1}, Lorg/restlet/data/Tag;->isWeak()Z

    move-result v4

    invoke-virtual {p0}, Lorg/restlet/data/Tag;->isWeak()Z

    move-result v5

    if-ne v4, v5, :cond_3

    move v0, v2

    .line 168
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lorg/restlet/data/Tag;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 170
    invoke-virtual {v1}, Lorg/restlet/data/Tag;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    move v0, v2

    .line 177
    .end local v1    # "that":Lorg/restlet/data/Tag;
    :cond_1
    :goto_2
    return v0

    .end local v0    # "result":Z
    :cond_2
    move v0, v3

    .line 159
    goto :goto_0

    .restart local v0    # "result":Z
    .restart local v1    # "that":Lorg/restlet/data/Tag;
    :cond_3
    move v0, v3

    .line 165
    goto :goto_1

    :cond_4
    move v0, v3

    .line 170
    goto :goto_2

    .line 172
    :cond_5
    invoke-virtual {p0}, Lorg/restlet/data/Tag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/restlet/data/Tag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2
.end method

.method public format()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x22

    .line 189
    invoke-virtual {p0}, Lorg/restlet/data/Tag;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const-string v1, "*"

    .line 197
    :goto_0
    return-object v1

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/restlet/data/Tag;->isWeak()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    const-string v1, "W/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/data/Tag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/restlet/data/Tag;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/restlet/data/Tag;->format()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isWeak()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lorg/restlet/data/Tag;->weak:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/restlet/data/Tag;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
