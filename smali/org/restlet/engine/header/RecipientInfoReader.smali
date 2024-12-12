.class public Lorg/restlet/engine/header/RecipientInfoReader;
.super Lorg/restlet/engine/header/HeaderReader;
.source "RecipientInfoReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderReader",
        "<",
        "Lorg/restlet/data/RecipientInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/restlet/engine/header/HeaderReader;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static addValues(Lorg/restlet/engine/header/Header;Ljava/util/Collection;)V
    .locals 2
    .param p0, "header"    # Lorg/restlet/engine/header/Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/header/Header;",
            "Ljava/util/Collection",
            "<",
            "Lorg/restlet/data/RecipientInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/restlet/data/RecipientInfo;>;"
    new-instance v0, Lorg/restlet/engine/header/RecipientInfoReader;

    invoke-virtual {p0}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/restlet/engine/header/RecipientInfoReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/restlet/engine/header/RecipientInfoReader;->addValues(Ljava/util/Collection;)V

    .line 59
    return-void
.end method


# virtual methods
.method public bridge synthetic readValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/restlet/engine/header/RecipientInfoReader;->readValue()Lorg/restlet/data/RecipientInfo;

    move-result-object v0

    return-object v0
.end method

.method public readValue()Lorg/restlet/data/RecipientInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 73
    new-instance v11, Lorg/restlet/data/RecipientInfo;

    invoke-direct {v11}, Lorg/restlet/data/RecipientInfo;-><init>()V

    .line 74
    .local v11, "result":Lorg/restlet/data/RecipientInfo;
    invoke-virtual {p0}, Lorg/restlet/engine/header/RecipientInfoReader;->readToken()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "protocolToken":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unexpected empty protocol token for while reading recipient info header, please check the value."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/header/RecipientInfoReader;->peek()I

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_3

    .line 82
    invoke-virtual {p0}, Lorg/restlet/engine/header/RecipientInfoReader;->read()I

    .line 83
    new-instance v0, Lorg/restlet/data/Protocol;

    invoke-virtual {p0}, Lorg/restlet/engine/header/RecipientInfoReader;->readToken()Ljava/lang/String;

    move-result-object v5

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v11, v0}, Lorg/restlet/data/RecipientInfo;->setProtocol(Lorg/restlet/data/Protocol;)V

    .line 91
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/engine/header/RecipientInfoReader;->skipSpaces()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p0}, Lorg/restlet/engine/header/RecipientInfoReader;->readRawText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/restlet/data/RecipientInfo;->setName(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lorg/restlet/engine/header/RecipientInfoReader;->skipSpaces()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {p0}, Lorg/restlet/engine/header/RecipientInfoReader;->readComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/restlet/data/RecipientInfo;->setComment(Ljava/lang/String;)V

    .line 100
    :cond_2
    return-object v11

    .line 86
    :cond_3
    new-instance v5, Lorg/restlet/data/Protocol;

    const-string v6, "HTTP"

    const-string v7, "HTTP"

    move-object v8, v3

    move v9, v4

    move-object v10, v1

    invoke-direct/range {v5 .. v10}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v11, v5}, Lorg/restlet/data/RecipientInfo;->setProtocol(Lorg/restlet/data/Protocol;)V

    goto :goto_0
.end method
