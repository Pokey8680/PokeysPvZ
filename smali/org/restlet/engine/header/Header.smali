.class public Lorg/restlet/engine/header/Header;
.super Ljava/lang/Object;
.source "Header.java"

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

.field private volatile value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/restlet/engine/header/Header;->name:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lorg/restlet/engine/header/Header;->value:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    if-ne p1, p0, :cond_5

    move v0, v3

    .line 78
    .local v0, "result":Z
    :goto_0
    if-nez v0, :cond_4

    .line 79
    instance-of v0, p1, Lorg/restlet/engine/header/Header;

    .line 82
    if-eqz v0, :cond_4

    move-object v1, p1

    .line 83
    check-cast v1, Lorg/restlet/engine/header/Header;

    .line 84
    .local v1, "that":Lorg/restlet/engine/header/Header;
    invoke-virtual {v1}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_1
    move v0, v3

    .line 88
    :goto_1
    if-eqz v0, :cond_4

    .line 89
    invoke-virtual {v1}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_3
    move v0, v3

    .line 95
    .end local v1    # "that":Lorg/restlet/engine/header/Header;
    :cond_4
    :goto_2
    return v0

    .end local v0    # "result":Z
    :cond_5
    move v0, v2

    .line 76
    goto :goto_0

    .restart local v0    # "result":Z
    .restart local v1    # "that":Lorg/restlet/engine/header/Header;
    :cond_6
    move v0, v2

    .line 84
    goto :goto_1

    :cond_7
    move v0, v2

    .line 89
    goto :goto_2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/restlet/engine/header/Header;->name:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/restlet/engine/header/Header;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

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
    .line 129
    iput-object p1, p0, Lorg/restlet/engine/header/Header;->name:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/Header;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/restlet/engine/header/Header;->value:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

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
