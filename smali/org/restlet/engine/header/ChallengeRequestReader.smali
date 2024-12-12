.class public Lorg/restlet/engine/header/ChallengeRequestReader;
.super Lorg/restlet/engine/header/HeaderReader;
.source "ChallengeRequestReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderReader",
        "<",
        "Lorg/restlet/data/ChallengeRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/restlet/engine/header/HeaderReader;-><init>(Ljava/lang/String;)V

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
    .line 49
    invoke-virtual {p0}, Lorg/restlet/engine/header/ChallengeRequestReader;->readValue()Lorg/restlet/data/ChallengeRequest;

    move-result-object v0

    return-object v0
.end method

.method public readValue()Lorg/restlet/data/ChallengeRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 63
    const/4 v1, 0x0

    .line 68
    .local v1, "result":Lorg/restlet/data/ChallengeRequest;
    invoke-virtual {p0}, Lorg/restlet/engine/header/ChallengeRequestReader;->skipSpaces()Z

    .line 69
    invoke-virtual {p0}, Lorg/restlet/engine/header/ChallengeRequestReader;->peek()I

    move-result v6

    if-eq v6, v9, :cond_3

    .line 70
    invoke-virtual {p0}, Lorg/restlet/engine/header/ChallengeRequestReader;->readToken()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "scheme":Ljava/lang/String;
    new-instance v1, Lorg/restlet/data/ChallengeRequest;

    .end local v1    # "result":Lorg/restlet/data/ChallengeRequest;
    new-instance v6, Lorg/restlet/data/ChallengeScheme;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lorg/restlet/data/ChallengeScheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v6}, Lorg/restlet/data/ChallengeRequest;-><init>(Lorg/restlet/data/ChallengeScheme;)V

    .line 73
    .restart local v1    # "result":Lorg/restlet/data/ChallengeRequest;
    invoke-virtual {p0}, Lorg/restlet/engine/header/ChallengeRequestReader;->skipSpaces()Z

    .line 76
    new-instance v5, Lorg/restlet/engine/header/ChallengeRequestReader$1;

    invoke-direct {v5, p0}, Lorg/restlet/engine/header/ChallengeRequestReader$1;-><init>(Lorg/restlet/engine/header/ChallengeRequestReader;)V

    .line 84
    .local v5, "w":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<Lorg/restlet/data/Parameter;>;"
    const/4 v4, 0x0

    .line 85
    .local v4, "stop":Z
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/engine/header/ChallengeRequestReader;->peek()I

    move-result v6

    if-eq v6, v9, :cond_2

    if-nez v4, :cond_2

    .line 86
    invoke-virtual {p0}, Lorg/restlet/engine/header/ChallengeRequestReader;->skipValueSeparator()Z

    move-result v3

    .line 88
    .local v3, "sepSkipped":Z
    invoke-virtual {p0}, Lorg/restlet/engine/header/ChallengeRequestReader;->mark()V

    .line 90
    invoke-virtual {p0}, Lorg/restlet/engine/header/ChallengeRequestReader;->readToken()Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lorg/restlet/engine/header/ChallengeRequestReader;->read()I

    move-result v0

    .line 92
    .local v0, "nextChar":I
    invoke-virtual {p0}, Lorg/restlet/engine/header/ChallengeRequestReader;->reset()V

    .line 93
    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isSpace(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 95
    const/4 v4, 0x1

    goto :goto_0

    .line 98
    :cond_0
    if-eqz v3, :cond_1

    .line 100
    invoke-virtual {v5}, Lorg/restlet/engine/header/HeaderWriter;->appendValueSeparator()Lorg/restlet/engine/header/HeaderWriter;

    .line 103
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/header/ChallengeRequestReader;->readParameter()Lorg/restlet/data/Parameter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/restlet/engine/header/HeaderWriter;->append(Ljava/lang/Object;)Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_0

    .line 106
    .end local v0    # "nextChar":I
    .end local v3    # "sepSkipped":Z
    :cond_2
    invoke-virtual {v5}, Lorg/restlet/engine/header/HeaderWriter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/restlet/data/ChallengeRequest;->setRawValue(Ljava/lang/String;)V

    .line 109
    .end local v2    # "scheme":Ljava/lang/String;
    .end local v4    # "stop":Z
    .end local v5    # "w":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<Lorg/restlet/data/Parameter;>;"
    :cond_3
    return-object v1
.end method
