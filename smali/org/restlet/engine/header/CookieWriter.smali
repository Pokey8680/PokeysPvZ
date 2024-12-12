.class public Lorg/restlet/engine/header/CookieWriter;
.super Lorg/restlet/engine/header/HeaderWriter;
.source "CookieWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderWriter",
        "<",
        "Lorg/restlet/data/Cookie;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/restlet/engine/header/HeaderWriter;-><init>()V

    return-void
.end method

.method public static getCookies(Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Cookie;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/restlet/data/Cookie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "source":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Cookie;>;"
    .local p1, "destination":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/restlet/data/Cookie;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Cookie;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/Cookie;

    .line 65
    .local v0, "cookie":Lorg/restlet/data/Cookie;
    invoke-virtual {v0}, Lorg/restlet/data/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {v0}, Lorg/restlet/data/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    .end local v0    # "cookie":Lorg/restlet/data/Cookie;
    :cond_1
    return-void
.end method

.method public static write(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Cookie;>;"
    new-instance v0, Lorg/restlet/engine/header/CookieWriter;

    invoke-direct {v0}, Lorg/restlet/engine/header/CookieWriter;-><init>()V

    invoke-virtual {v0, p0}, Lorg/restlet/engine/header/CookieWriter;->append(Ljava/util/List;)Lorg/restlet/engine/header/CookieWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/header/CookieWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static write(Lorg/restlet/data/Cookie;)Ljava/lang/String;
    .locals 1
    .param p0, "cookie"    # Lorg/restlet/data/Cookie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lorg/restlet/engine/header/CookieWriter;

    invoke-direct {v0}, Lorg/restlet/engine/header/CookieWriter;-><init>()V

    invoke-virtual {v0, p0}, Lorg/restlet/engine/header/CookieWriter;->append(Lorg/restlet/data/Cookie;)Lorg/restlet/engine/header/CookieWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/header/CookieWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public append(Ljava/util/List;)Lorg/restlet/engine/header/CookieWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Cookie;",
            ">;)",
            "Lorg/restlet/engine/header/CookieWriter;"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Cookie;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 145
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 146
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/Cookie;

    .line 148
    .local v0, "cookie":Lorg/restlet/data/Cookie;
    if-nez v1, :cond_1

    .line 149
    invoke-virtual {v0}, Lorg/restlet/data/Cookie;->getVersion()I

    move-result v2

    if-lez v2, :cond_0

    .line 150
    const-string v2, "$Version=\""

    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/CookieWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v2

    invoke-virtual {v0}, Lorg/restlet/data/Cookie;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/restlet/engine/header/HeaderWriter;->append(I)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v2

    const-string v3, "\"; "

    invoke-virtual {v2, v3}, Lorg/restlet/engine/header/HeaderWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 157
    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/CookieWriter;->append(Lorg/restlet/data/Cookie;)Lorg/restlet/engine/header/CookieWriter;

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_1
    const-string v2, "; "

    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/CookieWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_1

    .line 161
    .end local v0    # "cookie":Lorg/restlet/data/Cookie;
    .end local v1    # "i":I
    :cond_2
    return-object p0
.end method

.method public append(Lorg/restlet/data/Cookie;)Lorg/restlet/engine/header/CookieWriter;
    .locals 7
    .param p1, "cookie"    # Lorg/restlet/data/Cookie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p1}, Lorg/restlet/data/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/restlet/data/Cookie;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/restlet/data/Cookie;->getVersion()I

    move-result v4

    .line 101
    .local v4, "version":I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 102
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Can\'t write cookie. Invalid name detected"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 106
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5}, Lorg/restlet/engine/header/CookieWriter;->appendValue(Ljava/lang/String;I)Lorg/restlet/engine/header/CookieWriter;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Lorg/restlet/engine/header/CookieWriter;->append(C)Lorg/restlet/engine/header/HeaderWriter;

    .line 109
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 110
    invoke-virtual {p0, v3, v4}, Lorg/restlet/engine/header/CookieWriter;->appendValue(Ljava/lang/String;I)Lorg/restlet/engine/header/CookieWriter;

    .line 113
    :cond_2
    if-lez v4, :cond_4

    .line 115
    invoke-virtual {p1}, Lorg/restlet/data/Cookie;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 118
    const-string v5, "; $Path="

    invoke-virtual {p0, v5}, Lorg/restlet/engine/header/CookieWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 119
    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/CookieWriter;->appendQuotedString(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;

    .line 123
    :cond_3
    invoke-virtual {p1}, Lorg/restlet/data/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "domain":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 126
    const-string v5, "; $Domain="

    invoke-virtual {p0, v5}, Lorg/restlet/engine/header/CookieWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 127
    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/CookieWriter;->appendQuotedString(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;

    .line 131
    .end local v0    # "domain":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    :cond_4
    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/Object;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lorg/restlet/data/Cookie;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/CookieWriter;->append(Lorg/restlet/data/Cookie;)Lorg/restlet/engine/header/CookieWriter;

    move-result-object v0

    return-object v0
.end method

.method public appendValue(Ljava/lang/String;I)Lorg/restlet/engine/header/CookieWriter;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 174
    if-nez p2, :cond_0

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/CookieWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 180
    :goto_0
    return-object p0

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/CookieWriter;->appendQuotedString(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_0
.end method
