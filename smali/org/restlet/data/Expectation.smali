.class public final Lorg/restlet/data/Expectation;
.super Ljava/lang/Object;
.source "Expectation.java"

# interfaces
.implements Lorg/restlet/util/NamedValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/restlet/util/NamedValue",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile name:Ljava/lang/String;

.field private volatile parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private volatile value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/restlet/data/Expectation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lorg/restlet/data/Expectation;->name:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lorg/restlet/data/Expectation;->value:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public static continueResponse()Lorg/restlet/data/Expectation;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lorg/restlet/data/Expectation;

    const-string v1, "100-continue"

    invoke-direct {v0, v1}, Lorg/restlet/data/Expectation;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    if-ne p1, p0, :cond_5

    move v0, v3

    .line 104
    .local v0, "result":Z
    :goto_0
    if-nez v0, :cond_4

    .line 105
    instance-of v0, p1, Lorg/restlet/data/Expectation;

    .line 108
    if-eqz v0, :cond_4

    move-object v1, p1

    .line 109
    check-cast v1, Lorg/restlet/data/Expectation;

    .line 110
    .local v1, "that":Lorg/restlet/data/Expectation;
    invoke-virtual {v1}, Lorg/restlet/data/Expectation;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Expectation;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Expectation;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lorg/restlet/data/Expectation;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/data/Expectation;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_1
    move v0, v3

    .line 114
    :goto_1
    if-eqz v0, :cond_4

    .line 115
    invoke-virtual {v1}, Lorg/restlet/data/Expectation;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lorg/restlet/data/Expectation;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lorg/restlet/data/Expectation;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lorg/restlet/data/Expectation;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/data/Expectation;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_3
    move v0, v3

    .line 118
    :goto_2
    if-eqz v0, :cond_4

    .line 119
    invoke-virtual {p0}, Lorg/restlet/data/Expectation;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lorg/restlet/data/Expectation;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 125
    .end local v1    # "that":Lorg/restlet/data/Expectation;
    :cond_4
    return v0

    .end local v0    # "result":Z
    :cond_5
    move v0, v2

    .line 102
    goto :goto_0

    .restart local v0    # "result":Z
    .restart local v1    # "that":Lorg/restlet/data/Expectation;
    :cond_6
    move v0, v2

    .line 110
    goto :goto_1

    :cond_7
    move v0, v2

    .line 115
    goto :goto_2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/restlet/data/Expectation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lorg/restlet/data/Expectation;->parameters:Ljava/util/List;

    .line 145
    .local v0, "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Parameter;>;"
    if-nez v0, :cond_1

    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lorg/restlet/data/Expectation;->parameters:Ljava/util/List;

    .line 148
    if-nez v0, :cond_0

    .line 149
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Parameter;>;"
    .local v1, "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Parameter;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/data/Expectation;->parameters:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 151
    .end local v1    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Parameter;>;"
    .restart local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Parameter;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 153
    :cond_1
    return-object v0

    .line 151
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Parameter;>;"
    .restart local v1    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Parameter;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Parameter;>;"
    .restart local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Parameter;>;"
    goto :goto_0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/restlet/data/Expectation;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/restlet/data/Expectation;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 168
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/restlet/data/Expectation;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/restlet/data/Expectation;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/restlet/data/Expectation;->getParameters()Ljava/util/List;

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
    .line 178
    iput-object p1, p0, Lorg/restlet/data/Expectation;->name:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setParameters(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Parameter;>;"
    monitor-enter p0

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/data/Expectation;->getParameters()Ljava/util/List;

    move-result-object v0

    .line 190
    .local v0, "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Parameter;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 191
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 192
    monitor-exit p0

    .line 193
    return-void

    .line 192
    .end local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Parameter;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/data/Expectation;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lorg/restlet/data/Expectation;->value:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expectation [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/data/Expectation;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/data/Expectation;->parameters:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/data/Expectation;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
