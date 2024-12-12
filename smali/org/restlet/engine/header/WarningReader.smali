.class public Lorg/restlet/engine/header/WarningReader;
.super Lorg/restlet/engine/header/HeaderReader;
.source "WarningReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderReader",
        "<",
        "Lorg/restlet/data/Warning;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/restlet/engine/header/HeaderReader;-><init>(Ljava/lang/String;)V

    .line 70
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
            "Lorg/restlet/data/Warning;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/restlet/data/Warning;>;"
    new-instance v0, Lorg/restlet/engine/header/WarningReader;

    invoke-virtual {p0}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/restlet/engine/header/WarningReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/restlet/engine/header/WarningReader;->addValues(Ljava/util/Collection;)V

    .line 60
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
    .line 48
    invoke-virtual {p0}, Lorg/restlet/engine/header/WarningReader;->readValue()Lorg/restlet/data/Warning;

    move-result-object v0

    return-object v0
.end method

.method public readValue()Lorg/restlet/data/Warning;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v3, Lorg/restlet/data/Warning;

    invoke-direct {v3}, Lorg/restlet/data/Warning;-><init>()V

    .line 76
    .local v3, "result":Lorg/restlet/data/Warning;
    invoke-virtual {p0}, Lorg/restlet/engine/header/WarningReader;->readToken()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "code":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/header/WarningReader;->skipSpaces()Z

    .line 78
    invoke-virtual {p0}, Lorg/restlet/engine/header/WarningReader;->readRawText()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "agent":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/header/WarningReader;->skipSpaces()Z

    .line 80
    invoke-virtual {p0}, Lorg/restlet/engine/header/WarningReader;->readQuotedString()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/header/WarningReader;->skipSpaces()Z

    .line 83
    const/4 v2, 0x0

    .line 84
    .local v2, "date":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/header/WarningReader;->peek()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 85
    invoke-virtual {p0}, Lorg/restlet/engine/header/WarningReader;->readQuotedString()Ljava/lang/String;

    move-result-object v2

    .line 88
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-nez v4, :cond_2

    .line 89
    :cond_1
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Warning header malformed."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 92
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lorg/restlet/data/Status;->valueOf(I)Lorg/restlet/data/Status;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/restlet/data/Warning;->setStatus(Lorg/restlet/data/Status;)V

    .line 93
    invoke-virtual {v3, v0}, Lorg/restlet/data/Warning;->setAgent(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v3, v4}, Lorg/restlet/data/Warning;->setText(Ljava/lang/String;)V

    .line 95
    if-eqz v2, :cond_3

    .line 96
    invoke-static {v2}, Lorg/restlet/engine/util/DateUtils;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/restlet/data/Warning;->setDate(Ljava/util/Date;)V

    .line 99
    :cond_3
    return-object v3
.end method
