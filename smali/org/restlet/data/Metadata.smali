.class public abstract Lorg/restlet/data/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# instance fields
.field private final description:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/restlet/data/Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/restlet/data/Metadata;->name:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lorg/restlet/data/Metadata;->description:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 83
    instance-of v0, p1, Lorg/restlet/data/Metadata;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/restlet/data/Metadata;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/restlet/data/Metadata;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/data/Metadata;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/restlet/data/Metadata;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/restlet/data/Metadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getParent()Lorg/restlet/data/Metadata;
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/restlet/data/Metadata;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Metadata;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public abstract includes(Lorg/restlet/data/Metadata;)Z
.end method

.method public isCompatible(Lorg/restlet/data/Metadata;)Z
    .locals 1
    .param p1, "otherMetadata"    # Lorg/restlet/data/Metadata;

    .prologue
    .line 153
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/restlet/data/Metadata;->includes(Lorg/restlet/data/Metadata;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/restlet/data/Metadata;->includes(Lorg/restlet/data/Metadata;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/restlet/data/Metadata;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
