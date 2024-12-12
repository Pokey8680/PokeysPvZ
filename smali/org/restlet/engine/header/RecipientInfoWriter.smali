.class public Lorg/restlet/engine/header/RecipientInfoWriter;
.super Lorg/restlet/engine/header/HeaderWriter;
.source "RecipientInfoWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderWriter",
        "<",
        "Lorg/restlet/data/RecipientInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/restlet/engine/header/HeaderWriter;-><init>()V

    return-void
.end method

.method public static write(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/RecipientInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "recipientsInfo":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/RecipientInfo;>;"
    new-instance v0, Lorg/restlet/engine/header/RecipientInfoWriter;

    invoke-direct {v0}, Lorg/restlet/engine/header/RecipientInfoWriter;-><init>()V

    invoke-virtual {v0, p0}, Lorg/restlet/engine/header/RecipientInfoWriter;->append(Ljava/util/Collection;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/header/HeaderWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic append(Ljava/lang/Object;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Lorg/restlet/data/RecipientInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/RecipientInfoWriter;->append(Lorg/restlet/data/RecipientInfo;)Lorg/restlet/engine/header/RecipientInfoWriter;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/restlet/data/RecipientInfo;)Lorg/restlet/engine/header/RecipientInfoWriter;
    .locals 2
    .param p1, "recipientInfo"    # Lorg/restlet/data/RecipientInfo;

    .prologue
    .line 60
    invoke-virtual {p1}, Lorg/restlet/data/RecipientInfo;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {p1}, Lorg/restlet/data/RecipientInfo;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/Protocol;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/RecipientInfoWriter;->appendToken(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;

    .line 62
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/RecipientInfoWriter;->append(C)Lorg/restlet/engine/header/HeaderWriter;

    .line 63
    invoke-virtual {p1}, Lorg/restlet/data/RecipientInfo;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/Protocol;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/RecipientInfoWriter;->appendToken(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;

    .line 64
    invoke-virtual {p0}, Lorg/restlet/engine/header/RecipientInfoWriter;->appendSpace()Lorg/restlet/engine/header/HeaderWriter;

    .line 66
    invoke-virtual {p1}, Lorg/restlet/data/RecipientInfo;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p1}, Lorg/restlet/data/RecipientInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/RecipientInfoWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 69
    invoke-virtual {p1}, Lorg/restlet/data/RecipientInfo;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lorg/restlet/engine/header/RecipientInfoWriter;->appendSpace()Lorg/restlet/engine/header/HeaderWriter;

    .line 71
    invoke-virtual {p1}, Lorg/restlet/data/RecipientInfo;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/RecipientInfoWriter;->appendComment(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;

    .line 82
    :cond_0
    return-object p0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The name (host or pseudonym) of a recipient can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The protocol of a recipient can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
