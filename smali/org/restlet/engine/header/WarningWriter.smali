.class public Lorg/restlet/engine/header/WarningWriter;
.super Lorg/restlet/engine/header/HeaderWriter;
.source "WarningWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderWriter",
        "<",
        "Lorg/restlet/data/Warning;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
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
            "Lorg/restlet/data/Warning;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "warnings":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Warning;>;"
    new-instance v0, Lorg/restlet/engine/header/WarningWriter;

    invoke-direct {v0}, Lorg/restlet/engine/header/WarningWriter;-><init>()V

    invoke-virtual {v0, p0}, Lorg/restlet/engine/header/WarningWriter;->append(Ljava/util/Collection;)Lorg/restlet/engine/header/HeaderWriter;

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
    .line 46
    check-cast p1, Lorg/restlet/data/Warning;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/WarningWriter;->append(Lorg/restlet/data/Warning;)Lorg/restlet/engine/header/WarningWriter;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/restlet/data/Warning;)Lorg/restlet/engine/header/WarningWriter;
    .locals 4
    .param p1, "warning"    # Lorg/restlet/data/Warning;

    .prologue
    .line 61
    invoke-virtual {p1}, Lorg/restlet/data/Warning;->getAgent()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "agent":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/restlet/data/Warning;->getText()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/restlet/data/Warning;->getStatus()Lorg/restlet/data/Status;

    move-result-object v2

    if-nez v2, :cond_0

    .line 65
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t write warning. Invalid status code detected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 70
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t write warning. Invalid agent detected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 75
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t write warning. Invalid text detected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_4
    invoke-virtual {p1}, Lorg/restlet/data/Warning;->getStatus()Lorg/restlet/data/Status;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Status;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/WarningWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 80
    const-string v2, " "

    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/WarningWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 81
    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/WarningWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 82
    const-string v2, " "

    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/WarningWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 83
    invoke-virtual {p0, v1}, Lorg/restlet/engine/header/WarningWriter;->appendQuotedString(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;

    .line 85
    invoke-virtual {p1}, Lorg/restlet/data/Warning;->getDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 86
    invoke-virtual {p1}, Lorg/restlet/data/Warning;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lorg/restlet/engine/util/DateUtils;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/WarningWriter;->appendQuotedString(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;

    .line 89
    :cond_5
    return-object p0
.end method
