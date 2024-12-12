.class public Lorg/restlet/engine/header/ChallengeWriter;
.super Lorg/restlet/engine/header/HeaderWriter;
.source "ChallengeWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderWriter",
        "<",
        "Lorg/restlet/data/ChallengeRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile firstChallengeParameter:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/restlet/engine/header/HeaderWriter;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/restlet/engine/header/ChallengeWriter;->firstChallengeParameter:Z

    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic append(Ljava/lang/Object;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Lorg/restlet/data/ChallengeRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/ChallengeWriter;->append(Lorg/restlet/data/ChallengeRequest;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/restlet/data/ChallengeRequest;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 0
    .param p1, "value"    # Lorg/restlet/data/ChallengeRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/ChallengeRequest;",
            ")",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<",
            "Lorg/restlet/data/ChallengeRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    return-object p0
.end method

.method public appendChallengeParameter(Ljava/lang/String;)Lorg/restlet/engine/header/ChallengeWriter;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/restlet/engine/header/ChallengeWriter;->appendChallengeParameterSeparator()Lorg/restlet/engine/header/ChallengeWriter;

    .line 83
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/ChallengeWriter;->appendToken(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;

    .line 84
    return-object p0
.end method

.method public appendChallengeParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/engine/header/ChallengeWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/restlet/engine/header/ChallengeWriter;->appendChallengeParameterSeparator()Lorg/restlet/engine/header/ChallengeWriter;

    .line 100
    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/ChallengeWriter;->appendToken(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;

    .line 104
    :cond_0
    if-eqz p2, :cond_1

    .line 105
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/ChallengeWriter;->append(C)Lorg/restlet/engine/header/HeaderWriter;

    .line 106
    invoke-virtual {p0, p2}, Lorg/restlet/engine/header/ChallengeWriter;->appendToken(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;

    .line 109
    :cond_1
    return-object p0
.end method

.method public appendChallengeParameter(Lorg/restlet/data/Parameter;)Lorg/restlet/engine/header/ChallengeWriter;
    .locals 2
    .param p1, "parameter"    # Lorg/restlet/data/Parameter;

    .prologue
    .line 70
    invoke-virtual {p1}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/restlet/engine/header/ChallengeWriter;->appendChallengeParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/engine/header/ChallengeWriter;

    move-result-object v0

    return-object v0
.end method

.method public appendChallengeParameterSeparator()Lorg/restlet/engine/header/ChallengeWriter;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/restlet/engine/header/ChallengeWriter;->isFirstChallengeParameter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/ChallengeWriter;->setFirstChallengeParameter(Z)V

    .line 125
    :goto_0
    return-object p0

    .line 122
    :cond_0
    const-string v0, ", "

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/ChallengeWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_0
.end method

.method public appendQuotedChallengeParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/engine/header/ChallengeWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/restlet/engine/header/ChallengeWriter;->appendChallengeParameterSeparator()Lorg/restlet/engine/header/ChallengeWriter;

    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/ChallengeWriter;->appendToken(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;

    .line 159
    :cond_0
    if-eqz p2, :cond_1

    .line 160
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/ChallengeWriter;->append(C)Lorg/restlet/engine/header/HeaderWriter;

    .line 161
    invoke-virtual {p0, p2}, Lorg/restlet/engine/header/ChallengeWriter;->appendQuotedString(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;

    .line 164
    :cond_1
    return-object p0
.end method

.method public appendQuotedChallengeParameter(Lorg/restlet/data/Parameter;)Lorg/restlet/engine/header/ChallengeWriter;
    .locals 2
    .param p1, "parameter"    # Lorg/restlet/data/Parameter;

    .prologue
    .line 137
    invoke-virtual {p1}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/restlet/engine/header/ChallengeWriter;->appendQuotedChallengeParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/engine/header/ChallengeWriter;

    move-result-object v0

    return-object v0
.end method

.method public isFirstChallengeParameter()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lorg/restlet/engine/header/ChallengeWriter;->firstChallengeParameter:Z

    return v0
.end method

.method public setFirstChallengeParameter(Z)V
    .locals 0
    .param p1, "firstValue"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lorg/restlet/engine/header/ChallengeWriter;->firstChallengeParameter:Z

    .line 184
    return-void
.end method
