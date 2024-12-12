.class public Ljavax/ws/rs/core/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"


# static fields
.field public static final DEFAULT_VERSION:I = 0x1

.field private static final delegate:Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate",
            "<",
            "Ljavax/ws/rs/core/Cookie;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private domain:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private value:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Ljavax/ws/rs/ext/RuntimeDelegate;->getInstance()Ljavax/ws/rs/ext/RuntimeDelegate;

    move-result-object v0

    const-class v1, Ljavax/ws/rs/core/Cookie;

    invoke-virtual {v0, v1}, Ljavax/ws/rs/ext/RuntimeDelegate;->createHeaderDelegate(Ljava/lang/Class;)Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;

    move-result-object v0

    sput-object v0, Ljavax/ws/rs/core/Cookie;->delegate:Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, v0, v0}, Ljavax/ws/rs/core/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljavax/ws/rs/core/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "version"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Ljavax/ws/rs/core/Cookie;->name:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Ljavax/ws/rs/core/Cookie;->value:Ljava/lang/String;

    .line 61
    iput p5, p0, Ljavax/ws/rs/core/Cookie;->version:I

    .line 62
    iput-object p4, p0, Ljavax/ws/rs/core/Cookie;->domain:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Ljavax/ws/rs/core/Cookie;->path:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/ws/rs/core/Cookie;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 96
    sget-object v0, Ljavax/ws/rs/core/Cookie;->delegate:Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;

    invoke-interface {v0, p0}, Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/ws/rs/core/Cookie;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 172
    if-nez p1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v1

    .line 175
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 178
    check-cast v0, Ljavax/ws/rs/core/Cookie;

    .line 179
    .local v0, "other":Ljavax/ws/rs/core/Cookie;
    iget-object v2, p0, Ljavax/ws/rs/core/Cookie;->name:Ljava/lang/String;

    iget-object v3, v0, Ljavax/ws/rs/core/Cookie;->name:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Ljavax/ws/rs/core/Cookie;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/ws/rs/core/Cookie;->name:Ljava/lang/String;

    iget-object v3, v0, Ljavax/ws/rs/core/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    :cond_2
    iget-object v2, p0, Ljavax/ws/rs/core/Cookie;->value:Ljava/lang/String;

    iget-object v3, v0, Ljavax/ws/rs/core/Cookie;->value:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Ljavax/ws/rs/core/Cookie;->value:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/ws/rs/core/Cookie;->value:Ljava/lang/String;

    iget-object v3, v0, Ljavax/ws/rs/core/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    :cond_3
    iget v2, p0, Ljavax/ws/rs/core/Cookie;->version:I

    iget v3, v0, Ljavax/ws/rs/core/Cookie;->version:I

    if-ne v2, v3, :cond_0

    .line 188
    iget-object v2, p0, Ljavax/ws/rs/core/Cookie;->path:Ljava/lang/String;

    iget-object v3, v0, Ljavax/ws/rs/core/Cookie;->path:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Ljavax/ws/rs/core/Cookie;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/ws/rs/core/Cookie;->path:Ljava/lang/String;

    iget-object v3, v0, Ljavax/ws/rs/core/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    :cond_4
    iget-object v2, p0, Ljavax/ws/rs/core/Cookie;->domain:Ljava/lang/String;

    iget-object v3, v0, Ljavax/ws/rs/core/Cookie;->domain:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Ljavax/ws/rs/core/Cookie;->domain:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/ws/rs/core/Cookie;->domain:Ljava/lang/String;

    iget-object v3, v0, Ljavax/ws/rs/core/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ljavax/ws/rs/core/Cookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Ljavax/ws/rs/core/Cookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Ljavax/ws/rs/core/Cookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Ljavax/ws/rs/core/Cookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Ljavax/ws/rs/core/Cookie;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 155
    const/4 v0, 0x7

    .line 156
    .local v0, "hash":I
    iget-object v1, p0, Ljavax/ws/rs/core/Cookie;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljavax/ws/rs/core/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v0, v1, 0x2a7

    .line 157
    mul-int/lit8 v3, v0, 0x61

    iget-object v1, p0, Ljavax/ws/rs/core/Cookie;->value:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljavax/ws/rs/core/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 158
    mul-int/lit8 v1, v0, 0x61

    iget v3, p0, Ljavax/ws/rs/core/Cookie;->version:I

    add-int v0, v1, v3

    .line 159
    mul-int/lit8 v3, v0, 0x61

    iget-object v1, p0, Ljavax/ws/rs/core/Cookie;->path:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljavax/ws/rs/core/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v3, v1

    .line 160
    mul-int/lit8 v1, v0, 0x61

    iget-object v3, p0, Ljavax/ws/rs/core/Cookie;->domain:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Ljavax/ws/rs/core/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 161
    return v0

    :cond_1
    move v1, v2

    .line 156
    goto :goto_0

    :cond_2
    move v1, v2

    .line 157
    goto :goto_1

    :cond_3
    move v1, v2

    .line 159
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Ljavax/ws/rs/core/Cookie;->delegate:Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;

    invoke-interface {v0, p0}, Ljavax/ws/rs/ext/RuntimeDelegate$HeaderDelegate;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
