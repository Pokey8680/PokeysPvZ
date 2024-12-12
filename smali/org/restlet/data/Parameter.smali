.class public Lorg/restlet/data/Parameter;
.super Lorg/restlet/util/Couple;
.source "Parameter.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/restlet/util/NamedValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/util/Couple",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/restlet/data/Parameter;",
        ">;",
        "Lorg/restlet/util/NamedValue",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, v0, v0}, Lorg/restlet/data/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lorg/restlet/util/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public static create(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/restlet/data/Parameter;
    .locals 3
    .param p0, "name"    # Ljava/lang/CharSequence;
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    new-instance v0, Lorg/restlet/data/Parameter;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/restlet/data/Parameter;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, Lorg/restlet/data/Parameter;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/data/Parameter;->compareTo(Lorg/restlet/data/Parameter;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/restlet/data/Parameter;)I
    .locals 2
    .param p1, "o"    # Lorg/restlet/data/Parameter;

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public encode(Lorg/restlet/data/CharacterSet;)Ljava/lang/String;
    .locals 2
    .param p1, "characterSet"    # Lorg/restlet/data/CharacterSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, p1}, Lorg/restlet/data/Parameter;->encode(Ljava/lang/Appendable;Lorg/restlet/data/CharacterSet;)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public encode(Ljava/lang/Appendable;Lorg/restlet/data/CharacterSet;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "characterSet"    # Lorg/restlet/data/CharacterSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;Lorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 112
    invoke-virtual {p0}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    const/16 v0, 0x3d

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 114
    invoke-virtual {p0}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;Lorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 117
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 137
    if-ne p1, p0, :cond_5

    move v0, v3

    .line 139
    .local v0, "result":Z
    :goto_0
    if-nez v0, :cond_4

    .line 140
    instance-of v0, p1, Lorg/restlet/data/Parameter;

    .line 143
    if-eqz v0, :cond_4

    move-object v1, p1

    .line 144
    check-cast v1, Lorg/restlet/data/Parameter;

    .line 145
    .local v1, "that":Lorg/restlet/data/Parameter;
    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_1
    move v0, v3

    .line 149
    :goto_1
    if-eqz v0, :cond_4

    .line 150
    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_3
    move v0, v3

    .line 156
    .end local v1    # "that":Lorg/restlet/data/Parameter;
    :cond_4
    :goto_2
    return v0

    .end local v0    # "result":Z
    :cond_5
    move v0, v2

    .line 137
    goto :goto_0

    .restart local v0    # "result":Z
    .restart local v1    # "that":Lorg/restlet/data/Parameter;
    :cond_6
    move v0, v2

    .line 145
    goto :goto_1

    :cond_7
    move v0, v2

    .line 150
    goto :goto_2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lorg/restlet/data/Parameter;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lorg/restlet/data/Parameter;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 180
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/restlet/engine/util/SystemUtils;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lorg/restlet/data/Parameter;->setFirst(Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/data/Parameter;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lorg/restlet/data/Parameter;->setSecond(Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
